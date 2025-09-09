class ArtistSetsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :show_sets_pub, :show_set_web_pub]
  before_action :set_artist
  before_action :set_artist_set, only: [
    :show, :edit, :update, :destroy, 
    :show_sets_pub, :adicionar_musicas, :remover_musicas, 
    :show_set_web_pub, :buscar_musicbrainz, :adicionar_musicas_web, 
    :duplicate, :generate_xml
  ]
  before_action :check_owner, except: [:show, :show_sets_pub, :show_set_web_pub]

  # =============================================================================
  # 📋 AÇÕES BÁSICAS DE CRUD
  # =============================================================================

  # 📊 LISTAR SETS
  def index
    @artist_sets = @artist.artist_sets.order(:set_list_name)

    respond_to do |format|
      format.html # Para views HTML
      format.json { render json: @artist_sets.select(:id, :set_list_name) }
    end
  end

  # 👁️ VISUALIZAR DETALHES DO SET - IMPLEMENTADO
  def show
    @songs = @artist_set.songs.includes(:artist_songs)
    @songs_count = @songs.count
    @total_duration = calculate_total_duration(@songs) if @songs.any?
    
    # Para views públicas
    respond_to do |format|
      format.html
      format.json { render json: @artist_set.as_json(include: :songs) }
    end
  end

  # ➕ FORMULÁRIO PARA NOVO SET
  def new
    @artist_set = @artist.artist_sets.build
  end

  # 💾 CRIAR NOVO SET - MELHORADO
  def create
    @artist_set = @artist.artist_sets.build(artist_set_params)
    
    if @artist_set.save
      Rails.logger.info "✅ Set criado: #{@artist_set.set_list_name} para #{@artist.name}"
      redirect_to artist_path(@artist), notice: 'Set criado com sucesso!'
    else
      Rails.logger.error "❌ Erro ao criar set: #{@artist_set.errors.full_messages}"
      render :new, status: :unprocessable_entity
    end
  end

  # ✏️ FORMULÁRIO PARA EDITAR SET
  def edit
    # @artist_set já carregado pelo before_action
  end

  # 🔄 ATUALIZAR SET EXISTENTE - MELHORADO
  def update
    if @artist_set.update(artist_set_params)
      Rails.logger.info "✅ Set atualizado: #{@artist_set.set_list_name}"
      redirect_to artist_path(@artist), notice: 'Set atualizado com sucesso!'
    else
      Rails.logger.error "❌ Erro ao atualizar set: #{@artist_set.errors.full_messages}"
      render :edit, status: :unprocessable_entity
    end
  end

  # 🗑️ DELETAR SET - MELHORADO
  def destroy
    set_name = @artist_set.set_list_name
    
    if @artist_set.destroy
      Rails.logger.info "✅ Set deletado: #{set_name}"
      redirect_to artist_path(@artist), notice: 'Set deletado com sucesso!'
    else
      Rails.logger.error "❌ Erro ao deletar set: #{@artist_set.errors.full_messages}"
      redirect_to artist_path(@artist), alert: 'Erro ao deletar set.'
    end
  end

  # =============================================================================
  # 🎵 GERENCIAMENTO DE MÚSICAS - MELHORADO
  # =============================================================================

  def show_sets_pub
    # Músicas do set com eager loading para performance
    @artist_set_song_relations = @artist_set.artist_set_songs
                                           .includes(artist_song: :song)
                                           .order(:created_at)
    
    @songs = @artist_set_song_relations.map { |rel| rel.artist_song&.song }.compact
    
    # Filtro de busca no set
    if params[:search_set].present?
      search_term = params[:search_set].downcase
      @songs = @songs.select do |song| 
        song.name.downcase.include?(search_term) || 
        song.band.downcase.include?(search_term) 
      end
    end
    
    # Busca TODAS as músicas da tabela songs
    if params[:query].present?
      # Se há busca específica, filtra por nome ou banda
      search_term = "%#{params[:query]}%"
      @all_songs = Song.where("name ILIKE ? OR band ILIKE ?", search_term, search_term)
                      .order(:name)
                      .limit(500) # Limita para performance
    else
      # Se não há busca, mostra todas as músicas ordenadas por nome
      @all_songs = Song.all.order(:name).limit(500) # Limita para performance
    end
    
    # Para debug - verificar se as músicas estão sendo carregadas
    Rails.logger.info "🎵 Total de músicas no banco: #{Song.count}"
    Rails.logger.info "🎵 Músicas carregadas para exibição: #{@all_songs.count}"
    Rails.logger.info "🎵 Primeiras 5 músicas: #{@all_songs.limit(5).pluck(:name).join(', ')}"
  end

  def adicionar_musicas
    song_ids = params[:song_ids]&.reject(&:blank?)
    
    unless song_ids&.any?
      redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set),
                  alert: "Nenhuma música selecionada."
      return
    end

    added_count = 0
    
    ActiveRecord::Base.transaction do
      song_ids.each do |song_id|
        song = Song.find(song_id)
        artist_song = @artist.artist_songs.find_by(song: song)
        
        # Cria artist_song se não existir
        unless artist_song
          artist_song = @artist.artist_songs.create!(song: song)
        end
        
        # Adiciona ao set se não estiver já
        unless @artist_set.artist_set_songs.exists?(artist_song: artist_song)
          @artist_set.artist_set_songs.create!(artist_song: artist_song)
          added_count += 1
        end
      end
    end
    
    Rails.logger.info "✅ #{added_count} músicas adicionadas ao set #{@artist_set.set_list_name}"
    redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set),
                notice: "#{added_count} música(s) adicionada(s) ao set."
  rescue => e
    Rails.logger.error "❌ Erro ao adicionar músicas: #{e.message}"
    redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set),
                alert: "Erro ao adicionar músicas."
  end

  def remover_musicas
    song_ids = params[:song_ids]&.reject(&:blank?)
    
    unless song_ids&.any?
      redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set),
                  alert: "Nenhuma música selecionada."
      return
    end

    removed_count = 0
    
    ActiveRecord::Base.transaction do
      song_ids.each do |song_id|
        song = Song.find(song_id)
        artist_song = @artist.artist_songs.find_by(song: song)
        
        if artist_song
          artist_set_song = @artist_set.artist_set_songs.find_by(artist_song: artist_song)
          if artist_set_song&.destroy
            removed_count += 1
          end
        end
      end
    end
    
    Rails.logger.info "✅ #{removed_count} músicas removidas do set #{@artist_set.set_list_name}"
    redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set),
                notice: "#{removed_count} música(s) removida(s) do set."
  rescue => e
    Rails.logger.error "❌ Erro ao remover músicas: #{e.message}"
    redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set),
                alert: "Erro ao remover músicas."
  end

  # =============================================================================
  # 🌐 INTEGRAÇÃO MUSICBRAINZ - MELHORADO
  # =============================================================================

  def show_set_web_pub
    @songs = @artist_set.songs.distinct
    
    # Cache com namespace específico
    cache_key = session[:musicbrainz_cache_key]
    @musicbrainz_results = cache_key ? Rails.cache.read(cache_key, namespace: 'musicbrainz') : []
    @musicbrainz_results ||= []
    
    # Limpar cache após uso
    if cache_key && @musicbrainz_results.any?
      Rails.cache.delete(cache_key, namespace: 'musicbrainz')
      session[:musicbrainz_cache_key] = nil
    end
    
    @search_query = params[:query] || session[:last_search_query]
    session[:last_search_query] = @search_query if params[:query].present?
  end

  def buscar_musicbrainz
    query = params[:query]&.strip
    
    unless query.present?
      redirect_to show_set_web_pub_artist_artist_set_path(@artist, @artist_set),
                  alert: "Digite um termo de busca."
      return
    end

    begin
      Rails.logger.info "🔍 Buscando no MusicBrainz: #{query}"
      results = MusicbrainzService.search(query)
      
      formatted_results = format_musicbrainz_results(results)
      
      cache_key = "mb_#{@artist.id}_#{@artist_set.id}_#{Time.current.to_i}"
      Rails.cache.write(cache_key, formatted_results, 
                       expires_in: 30.minutes, namespace: 'musicbrainz')
      
      session[:musicbrainz_cache_key] = cache_key
      session[:last_search_query] = query
        
      Rails.logger.info "✅ #{formatted_results.count} resultados encontrados"
      redirect_to show_set_web_pub_artist_artist_set_path(@artist, @artist_set),
                  notice: "#{formatted_results.count} resultado(s) encontrado(s)!"
                  
    rescue => e
      Rails.logger.error "❌ Erro MusicBrainz: #{e.message}"
      redirect_to show_set_web_pub_artist_artist_set_path(@artist, @artist_set),
                  alert: "Erro na busca: #{e.message}"
    end
  end

  def adicionar_musicas_web
    selected_songs = params[:selected_songs]&.reject(&:blank?)
    
    unless selected_songs&.any?
      redirect_to show_set_web_pub_artist_artist_set_path(@artist, @artist_set),
                  alert: "Nenhuma música selecionada."
      return
    end

    added_count = 0
    
    ActiveRecord::Base.transaction do
      selected_songs.each do |song_data|
        song_info = JSON.parse(song_data)
        
        # Criar/encontrar música
        song = find_or_create_song(song_info)
        
        # Criar ligação artista-música
        artist_song = find_or_create_artist_song(song, song_info)
        
        # Adicionar ao set
        unless @artist_set.artist_set_songs.exists?(artist_song: artist_song)
          @artist_set.artist_set_songs.create!(artist_song: artist_song)
          added_count += 1
        end
      end
    end
    
    Rails.logger.info "✅ #{added_count} músicas do MusicBrainz adicionadas"
    redirect_to show_set_web_pub_artist_artist_set_path(@artist, @artist_set),
                notice: "#{added_count} música(s) adicionada(s) com sucesso!"
  rescue => e
    Rails.logger.error "❌ Erro ao adicionar músicas web: #{e.message}"
    redirect_to show_set_web_pub_artist_artist_set_path(@artist, @artist_set),
                alert: "Erro ao adicionar músicas."
  end

  # =============================================================================
  # 🔄 DUPLICAÇÃO E EXPORTAÇÃO
  # =============================================================================

  def duplicate
    validate_artist_set_for_duplication
    
    new_name = generate_unique_setlist_name(@artist_set.set_list_name)
    
    ActiveRecord::Base.transaction do
      duplicated_set = @artist_set.dup
      duplicated_set.set_list_name = new_name
      duplicated_set.save!
      
      # Copiar músicas
      @artist_set.artist_set_songs.find_each do |song_relation|
        duplicated_set.artist_set_songs.create!(
          artist_song_id: song_relation.artist_song_id
        )
      end
      
      Rails.logger.info "✅ Set duplicado: #{new_name}"
      redirect_to artist_path(@artist), 
                  notice: "Setlist duplicado como '#{new_name}'"
    end
  rescue => e
    Rails.logger.error "❌ Erro na duplicação: #{e.message}"
    redirect_to artist_path(@artist), 
                alert: "Erro ao duplicar setlist."
  end

  def generate_xml
    @songs = @artist_set.songs
    
    if @songs.empty?
      redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set), 
                  alert: 'Nenhuma música no set para gerar XML'
      return
    end
    
    xml_content = generate_setlist_xml(@songs)
    filename = "#{@artist_set.set_list_name.parameterize}.xml"
    
    send_data xml_content,
      filename: filename,
      type: 'application/xml',
      disposition: 'attachment'
      
    Rails.logger.info "✅ XML gerado: #{filename}"
  rescue => e
    Rails.logger.error "❌ Erro ao gerar XML: #{e.message}"
    redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set), 
                alert: "Erro ao gerar XML."
  end

  private

  # =============================================================================
  # 🔒 MÉTODOS PRIVADOS
  # =============================================================================

  def set_artist
    @artist = Artist.find(params[:artist_id])
  rescue ActiveRecord::RecordNotFound
    redirect_to artists_path, alert: "Artista não encontrado."
  end

  def set_artist_set
    @artist_set = @artist.artist_sets.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to artist_path(@artist), alert: "Setlist não encontrado."
  end

  def check_owner
    unless current_user == @artist.user
      redirect_to artist_path(@artist), alert: "Sem permissão para esta ação."
    end
  end

  def artist_set_params
    params.require(:artist_set).permit(:set_list_name, :description, :set_tags)
  end

  def build_available_songs_query
    if params[:query].present?
      # Busca por nome ou banda
      search_term = "%#{params[:query]}%"
      Song.where("name ILIKE ? OR band ILIKE ?", search_term, search_term)
          .order(:name)
          .limit(500)
    else
      # Retorna todas as músicas se não há busca específica
      Song.all.order(:name).limit(500)
    end
  end

  def format_musicbrainz_results(results)
    results.map do |result|
      {
        'title' => result[:nome],
        'artist' => result[:autor],
        'album' => 'N/A',
        'year' => 'N/A',
        'duration' => nil,
        'mbid' => result[:recording_mbid],
        'artist_mbid' => result[:artist_mbid],
        'cover_url' => result[:capa],
        'lyrics' => result[:letra],
        'isrc' => result[:isrc]
      }
    end
  end

  def find_or_create_song(song_info)
    song = Song.find_or_create_by(
      name: song_info['title'],
      band: song_info['artist']
    ) do |s|
      s.mbid = song_info['mbid'] if song_info['mbid'].present?
      s.isrc = song_info['isrc'] if song_info['isrc'].present?
      s.lyrics = song_info['lyrics'] if song_info['lyrics'].present?
    end

    # Atualizar ISRC se necessário
    if song_info['isrc'].present? && song.isrc != song_info['isrc']
      song.update!(isrc: song_info['isrc'])
    end

    song
  end

  def find_or_create_artist_song(song, song_info)
    @artist.artist_songs.find_or_create_by(song: song) do |as|
      as.letra = song_info['lyrics'] if song_info['lyrics'].present?
    end
  end

  def validate_artist_set_for_duplication
    if @artist_set.nil?
      Rails.logger.error "❌ ArtistSet nil para ID: #{params[:id]}"
      redirect_to artist_path(@artist), alert: "Setlist não encontrado"
      return
    end

    if @artist_set.set_list_name.blank?
      Rails.logger.error "❌ ArtistSet sem nome válido"
      redirect_to artist_path(@artist), alert: "Setlist sem nome válido"
      return
    end
  end

  def generate_unique_setlist_name(original_name)
    base_name = original_name
    counter = 1
    new_name = "#{base_name} (Cópia)"
    
    while @artist.artist_sets.exists?(set_list_name: new_name)
      counter += 1
      new_name = "#{base_name} (Cópia #{counter})"
    end
    
    new_name
  end

  def calculate_total_duration(songs)
    # Agora podemos calcular a duração total usando o novo campo
    total_segundos = 0
    
    songs.each do |song|
      artist_song = @artist.artist_songs.find_by(song: song)
      if artist_song&.duracao.present?
        total_segundos += artist_song.duracao_em_segundos
      end
    end
    
    return ArtistSong.segundos_para_duracao(total_segundos) if total_segundos > 0
    nil
  end

  # GERAÇÃO DE XML
  def generate_setlist_xml(songs)
    xml = ['<?xml version="1.0" encoding="UTF-8"?>', '<Sounds>']
    
    Rails.logger.info "🎵 Gerando XML para #{songs.count} músicas"
    
    songs.each do |song|
      artist_song = @artist.artist_songs.find_by(song: song)
      
      filename = if artist_song&.nome_arquivo_som.present?
                  Rails.logger.info "✅ Usando arquivo personalizado: #{artist_song.nome_arquivo_som}"
                  artist_song.nome_arquivo_som
                else
                  safe_filename = song.name.gsub(/[^\w\s-]/, '').gsub(/\s+/, ' ').strip
                  generated_filename = "#{safe_filename}.mp3"
                  Rails.logger.info "⚠️ Gerando nome automático: #{generated_filename}"
                  generated_filename
                end
      
      xml << '  <Sound>'
      xml << "    <SoundName>#{CGI.escapeHTML(song.name)}</SoundName>"
      xml << "    <SoundFilename>#{CGI.escapeHTML(filename)}</SoundFilename>"
      xml << "    <SoundVolume>1.0</SoundVolume>"
      
      if artist_song&.duracao.present?
        xml << "    <Duration>#{artist_song.duracao}</Duration>"
        Rails.logger.info "⏱️ Duração adicionada: #{artist_song.duracao}"
      end
      
      xml << '  </Sound>'
    end
    
    xml << '</Sounds>'
    xml.join("\n")
  end
end