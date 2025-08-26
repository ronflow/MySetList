require 'csv'

class SongsController < ApplicationController
  # Permite requisições sem verificação de autenticidade para ações de importação
  skip_before_action :verify_authenticity_token, only: [:import_line_action, :process_csv, :cancel_import]
  # Permite acesso à ação de lyrics sem autenticação
  skip_before_action :authenticate_user!, only: [:lyrics]
  # Carrega a música antes das ações show e lyrics
  before_action :set_song, only: [:show, :lyrics]

  # Exibe o formulário para upload de arquivo CSV
  def import_csv
    # Apenas renderiza a view de upload
  end

  # Processa o arquivo CSV enviado pelo usuário
  def process_csv
    if params[:csv_file].blank?
      flash[:alert] = "Selecione um arquivo CSV."
      redirect_to import_csv_songs_path and return
    end

    file = params[:csv_file]
    content = file.read.force_encoding('UTF-8').gsub(/\r\n?/, "\n").gsub(/\n+/, "\n")
    delimiter = content.include?(';') ? ';' : ','

    begin
      lines = []
      CSV.parse(content, col_sep: delimiter).each_with_index do |row, idx|
        next if idx == 0 # pula o cabeçalho
        row = row.map { |cell| cell.to_s.strip }
        next if row.compact.empty? || row.all?(&:blank?)
        lines << row if row.size == 4
      end

      if lines.size < 1
        flash[:alert] = "O arquivo deve conter pelo menos uma linha de dados."
        redirect_to import_csv_songs_path and return
      end

      unless lines.all? { |l| l.size == 4 }
        flash[:alert] = "Todas as linhas devem ter exatamente 4 colunas."
        redirect_to import_csv_songs_path and return
      end

      # ✅ CORRIGIDO: Salva dados em arquivo temporário ao invés da sessão
      import_id = SecureRandom.hex(8)
      temp_file_path = Rails.root.join('tmp', "csv_import_#{import_id}.json")
      
      import_data = {
        lines: lines,
        index: 0,
        imported_count: 0,
        timestamp: Time.current.to_i
      }
      
      File.write(temp_file_path, import_data.to_json)
      
      # Salva apenas o ID na sessão
      session[:csv_import_id] = import_id
      
      redirect_to import_line_songs_path
    rescue => e
      flash[:alert] = "Erro ao processar o arquivo: #{e.message}"
      redirect_to import_csv_songs_path
    end
  end

  # Exibe a tela para importar uma linha do CSV por vez
  def import_line
    import_data = load_import_data
    
    unless import_data
      flash[:alert] = "Sessão de importação expirou. Reinicie o processo."
      redirect_to import_csv_songs_path and return
    end

    @csv_lines = import_data['lines']
    @csv_index = import_data['index']
    @imported_count = import_data['imported_count']

    if @csv_index >= @csv_lines.size
      flash[:notice] = "Importação finalizada. Total importado: #{@imported_count}"
      cleanup_import_data
      redirect_to_artist_show and return
    end

    line = @csv_lines[@csv_index]
    song_name, band, letra_csv, _extra = line

    # Busca a música no banco local
    @song = Song.find_by(name: song_name, band: band)
    if @song
      @letra_atual = @song.lyrics.to_s[0..49]
      @letra_csv = letra_csv[0..49]
      @found = true
    else
      @found = false
      @musicbrainz_results = search_musicbrainz(song_name, band)
    end
    
    @song_name = song_name
    @band = band
    @letra_csv_full = letra_csv
  end

  # Processa a ação escolhida pelo usuário na tela de importação linha a linha
    def import_line_action
    import_data = load_import_data
    
    unless import_data
      flash[:alert] = "Sessão de importação expirou. Reinicie o processo."
      redirect_to import_csv_songs_path and return
    end

    @csv_lines = import_data['lines']
    @csv_index = import_data['index']
    @imported_count = import_data['imported_count']

    line = @csv_lines[@csv_index]
    song_name, band, letra_csv, _extra = line

    case params[:action_type]
    when "import_lyrics"
      # ✅ BUSCA mais robusta por música existente
      song = Song.find_by(name: song_name, band: band)
      if song
        begin
          # ✅ PRESERVA formatação da letra antes de atualizar
          formatted_lyrics = preserve_lyrics_formatting(letra_csv)

          # Atualiza letra na tabela songs
          song.update!(lyrics: letra_csv) if song.lyrics.blank?
          
          # Atualiza letra na tabela artist_songs
          update_song_lyrics(song, letra_csv)
          
          @imported_count += 1
          @csv_index += 1
          flash[:notice] = "✅ Letra atualizada para '#{song.name}'!"
          
        rescue ActiveRecord::RecordInvalid => e
          Rails.logger.error "❌ Erro ao atualizar letra: #{e.message}"
          flash[:alert] = "❌ Erro ao atualizar letra: #{e.message}"
          @csv_index += 1
        end
      else
        flash[:alert] = "❌ Música não encontrada!"
        @csv_index += 1
      end

    when "import_music"
      selected_option = params[:musicbrainz_option]
      isrc = params[:isrc].presence || params[:selected_isrc]
      
      if selected_option.present?
        create_song_from_musicbrainz(selected_option, letra_csv, isrc)
      else
        create_simple_song(song_name, band, letra_csv)
      end

    when "next"
      @csv_index += 1
      flash[:notice] = "⏭️ Música pulada"

    when "cancel"
      cleanup_import_data
      flash[:notice] = "❌ Importação cancelada"
      redirect_to_artist_show and return
    end

    # Atualiza progresso
    update_import_progress(@csv_index, @imported_count)

    if @csv_index >= @csv_lines.size
      flash[:notice] = "🎉 Importação finalizada. Total importado: #{@imported_count}"
      cleanup_import_data
      redirect_to_artist_show and return
    end

    redirect_to import_line_songs_path
  end

  # Cancela a importação e redireciona para a tela do artista
  def cancel_import
    cleanup_import_data
    flash[:notice] = "Importação cancelada"
    redirect_to_artist_show
  end

  # Lista músicas, podendo filtrar por evento ou artista
  def index
    if params[:event_id].present?
      @event = Event.find(params[:event_id])
      @query = params[:query]
      songs = Song.all
      songs = songs.where("name ILIKE ?", "%#{@query}%") if @query.present?
      @songs = songs.order(:name).page(params[:page]).per(5)
    elsif params[:artist_id].present?
      @artist = Artist.find(params[:artist_id])
      @songs = @artist.songs.order(:name)
    else
      @songs = Song.all.order(:name)
    end
  end

  # Exibe detalhes da música selecionada
  def show
    @artists = @song.artists
  end

  # Exibe a letra da música ou uma mensagem de indisponibilidade
  def lyrics
    if @song.lyrics.present?
      render :lyrics
    else
      render :lyrics_unavailable, locals: { song: @song }
    end
  end

  private

  # ✅ NOVOS MÉTODOS PARA GERENCIAR DADOS DE IMPORTAÇÃO
  def load_import_data
    import_id = session[:csv_import_id]
    return nil unless import_id

    temp_file_path = Rails.root.join('tmp', "csv_import_#{import_id}.json")
    return nil unless File.exist?(temp_file_path)

    # Verifica se o arquivo não é muito antigo (1 hora)
    file_age = Time.current.to_i - File.mtime(temp_file_path).to_i
    if file_age > 3600 # 1 hora
      cleanup_import_data
      return nil
    end

    JSON.parse(File.read(temp_file_path))
  rescue => e
    Rails.logger.error "Erro ao carregar dados de importação: #{e.message}"
    cleanup_import_data
    nil
  end

  def update_import_progress(new_index, new_imported_count)
    import_id = session[:csv_import_id]
    return unless import_id

    temp_file_path = Rails.root.join('tmp', "csv_import_#{import_id}.json")
    return unless File.exist?(temp_file_path)

    import_data = JSON.parse(File.read(temp_file_path))
    import_data['index'] = new_index
    import_data['imported_count'] = new_imported_count
    
    File.write(temp_file_path, import_data.to_json)
  rescue => e
    Rails.logger.error "Erro ao atualizar progresso: #{e.message}"
  end

  def cleanup_import_data
    import_id = session[:csv_import_id]
    if import_id
      temp_file_path = Rails.root.join('tmp', "csv_import_#{import_id}.json")
      File.delete(temp_file_path) if File.exist?(temp_file_path)
      session.delete(:csv_import_id)
    end
  end

  def update_song_lyrics(song, letra_csv)
    return unless letra_csv.present?
    
    # ✅ PRESERVA formatação original da letra
    formatted_lyrics = preserve_lyrics_formatting(letra_csv)
    
    # Atualiza letra na tabela songs se estiver vazia
    if song.lyrics.blank?
      song.update!(lyrics: formatted_lyrics)
      Rails.logger.info "📝 Letra atualizada na tabela songs (formatação preservada)"
    end
    
    # Atualiza letra na tabela artist_songs
    artist_song = ArtistSong.find_by(song: song)
    if artist_song
      if artist_song.letra.blank?
        artist_song.update!(letra: formatted_lyrics)
        Rails.logger.info "📝 Letra atualizada na tabela artist_songs (formatação preservada)"
      end
    else
      create_artist_song_relation(song, formatted_lyrics)
    end
  end

  # ✅ NOVO MÉTODO: Preserva formatação das letras
  def preserve_lyrics_formatting(raw_lyrics)
    return raw_lyrics if raw_lyrics.blank?
    
    # Remove espaços extras no início e fim, mas preserva quebras de linha
    formatted = raw_lyrics.strip
    
    # Normaliza quebras de linha (Windows, Mac, Unix)
    formatted = formatted.gsub(/\r\n/, "\n").gsub(/\r/, "\n")
    
    # Remove linhas completamente vazias duplicadas (máximo 2 quebras seguidas)
    formatted = formatted.gsub(/\n{3,}/, "\n\n")
    
    # Preserva espaçamento para efeitos visuais (indentação, etc.)
    # Não remove espaços no meio das linhas
    
    Rails.logger.info "📝 Formatação preservada: #{formatted.lines.count} linhas, #{formatted.length} caracteres"
    
    formatted
  end

  def create_artist_song_relation(song, letra_csv)
    current_artist = current_user&.artists&.first || Artist.first
    
    if current_artist
      ArtistSong.find_or_create_by(
        artist: current_artist,
        song: song
      ) do |as|
        as.letra = letra_csv
      end
      Rails.logger.info "📝 Relação artist_song criada/atualizada"
    else
      Rails.logger.warn "⚠️ Nenhum artista encontrado para criar relação"
    end
  end

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :lyrics, :tags, :band, :mbid, :isrc)
  end

  def redirect_to_artist_show
    artist = if current_user&.artists&.any?
               current_user.artists.first
             elsif session[:current_artist_id].present?
               Artist.find_by(id: session[:current_artist_id])
             else
               Artist.first
             end

    if artist
      redirect_to artist_path(artist)
    else
      redirect_to root_path
    end
  end

  # Busca músicas no MusicBrainz por nome e banda
  def search_musicbrainz(song_name, band_name)
    require 'net/http'
    require 'json'
    require 'uri'
    
    begin
      clean_song = song_name.strip.gsub(/[^\w\s]/, '')
      clean_band = band_name.strip.gsub(/[^\w\s]/, '')
      
      query = "recording:\"#{clean_song}\" AND artist:\"#{clean_band}\""
      encoded_query = URI.encode_www_form_component(query)
      url = "https://musicbrainz.org/ws/2/recording?query=#{encoded_query}&inc=isrcs+artist-credits&fmt=json&limit=5"
      
      uri = URI(url)
      sleep(1)
      
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.open_timeout = 15
      http.read_timeout = 15
      
      request = Net::HTTP::Get.new(uri)
      request['User-Agent'] = 'MySetList/1.0 (contato@mysetlist.com)'
      request['Accept'] = 'application/json'
      
      response = http.request(request)
      
      if response.code == '200'
        data = JSON.parse(response.body)
        recordings = data['recordings'] || []
        
        # ⭐ AGORA INCLUI músicas com E sem ISRC
        results = recordings.map do |recording|
          isrc = recording['isrcs']&.first
          
          title_match = recording['title'].downcase.include?(clean_song.downcase) ? 50 : 0
          artist_name = recording['artist-credit']&.first&.dig('artist', 'name') || 'Desconhecido'
          artist_match = artist_name.downcase.include?(clean_band.downcase) ? 50 : 0
          score = title_match + artist_match
          
          {
            id: recording['id'],
            title: recording['title'],
            artist: artist_name,
            isrc: isrc, # Pode ser nil
            score: score
          }
        end
        
        # Ordena por score, mas prioriza músicas COM ISRC
        results.sort_by { |r| [r[:isrc].present? ? 0 : 1, -r[:score]] }
        
      else
        Rails.logger.warn "MusicBrainz busca retornou código #{response.code} para '#{song_name}' - '#{band_name}'"
        [] # ❌ Retorna array vazio em caso de erro
      end
      
    rescue => e
      Rails.logger.error "Erro ao buscar no MusicBrainz: #{e.message}"
      [] # ❌ Retorna array vazio em caso de erro
    end
  end

  # Cria música com ou sem ISRC do MusicBrainz
  def create_song_from_musicbrainz(musicbrainz_id, letra_csv, isrc_param = nil)
    song_details = get_musicbrainz_details(musicbrainz_id)
    
    if song_details
      isrc_final = isrc_param.presence || song_details[:isrc]

      # ✅ PRESERVA formatação da letra
      formatted_lyrics = preserve_lyrics_formatting(letra_csv)
      
      # ✅ VERIFICA SE JÁ EXISTE antes de criar
      existing_song = Song.find_existing(
        name: song_details[:title],
        band: song_details[:artist_name],
        mbid: musicbrainz_id
      )
      
      if existing_song
        # ✅ MÚSICA JÁ EXISTE - apenas atualiza dados se necessário
        Rails.logger.info "🔍 Música já existe: #{existing_song.name} (ID: #{existing_song.id})"
        
        # Atualiza MBID se não tinha
        if existing_song.mbid.blank? && musicbrainz_id.present?
          existing_song.update!(mbid: musicbrainz_id)
          Rails.logger.info "📝 MBID atualizado para música existente"
        end
        
        # Atualiza ISRC se necessário
        if isrc_final.present? && existing_song.isrc.blank?
          existing_song.update!(isrc: isrc_final)
          Rails.logger.info "📝 ISRC atualizado para música existente"
        end
        
        # Atualiza letra se necessário
        update_song_lyrics(existing_song, letra_csv)
        
        @imported_count += 1
        @csv_index += 1
        
        flash[:notice] = "✅ Música '#{existing_song.name}' já existia - dados atualizados!"
        
      else
        # ✅ MÚSICA NÃO EXISTE - cria nova
        begin
          song = Song.create!(
            name: song_details[:title],
            band: song_details[:artist_name],
            mbid: musicbrainz_id,
            isrc: isrc_final,
            lyrics: formatted_lyrics  # ✅ FORMATAÇÃO PRESERVADA
          )
          
          # Cria relação artist_song
          create_artist_song_relation(song, letra_csv)
          
          @imported_count += 1
          @csv_index += 1
          
          isrc_info = isrc_final ? " (ISRC: #{isrc_final})" : " (sem ISRC)"
          flash[:notice] = "✅ Música '#{song.name}' importada do MusicBrainz#{isrc_info}!"
          
        rescue ActiveRecord::RecordInvalid => e
          Rails.logger.error "❌ Erro ao criar música: #{e.message}"
          flash[:alert] = "❌ Erro: #{e.message}"
          @csv_index += 1
        end
      end
      
    else
      # ❌ FALHA se não conseguir dados do MusicBrainz
      flash[:alert] = "❌ Erro ao buscar detalhes no MusicBrainz. Tente novamente."
      @csv_index += 1
    end
  end

  # Cria uma música simples sem buscar no MusicBrainz
  def create_simple_song(song_name, band, letra_csv)
    # ✅ PRESERVA formatação da letra
    formatted_lyrics = preserve_lyrics_formatting(letra_csv)

    # ✅ VERIFICA SE JÁ EXISTE antes de criar
    existing_song = Song.find_by(name: song_name, band: band)
    
    if existing_song
      Rails.logger.info "🔍 Música simples já existe: #{existing_song.name} (ID: #{existing_song.id})"
      
      # Apenas atualiza letra se necessário
      update_song_lyrics(existing_song, letra_csv)
      
      @imported_count += 1
      @csv_index += 1
      flash[:notice] = "✅ Música '#{existing_song.name}' já existia - letra atualizada!"
      
    else
      begin
        song = Song.create!(
          name: song_name,
          band: band,
          lyrics: formatted_lyrics  # ✅ FORMATAÇÃO PRESERVADA
        )
        
        # Cria relação artist_song
        create_artist_song_relation(song, letra_csv)
        
        @imported_count += 1
        @csv_index += 1
        flash[:notice] = "💾 Música '#{song.name}' criada sem MusicBrainz!"
        
      rescue ActiveRecord::RecordInvalid => e
        Rails.logger.error "❌ Erro ao criar música simples: #{e.message}"
        flash[:alert] = "❌ Erro: #{e.message}"
        @csv_index += 1
      end
    end
  end

  # Busca detalhes específicos no MusicBrainz
  def get_musicbrainz_details(musicbrainz_id)
    require 'net/http'
    require 'json'
    require 'uri'
    
    begin
      url = "https://musicbrainz.org/ws/2/recording/#{musicbrainz_id}?inc=artist-credits+isrcs&fmt=json"
      uri = URI(url)
      sleep(1)
      
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.open_timeout = 15
      http.read_timeout = 15
      
      request = Net::HTTP::Get.new(uri)
      request['User-Agent'] = 'MySetList/1.0 (contato@mysetlist.com)'
      request['Accept'] = 'application/json'
      
      response = http.request(request)
      
      if response.code == '200'
        data = JSON.parse(response.body)
        isrc = data['isrcs']&.first
        
        # ✅ AGORA retorna mesmo sem ISRC
        {
          title: data['title'],
          artist_name: data['artist-credit']&.first&.dig('artist', 'name') || 'Desconhecido',
          isrc: isrc # Pode ser nil
        }
      else
        Rails.logger.warn "MusicBrainz detalhes retornou código #{response.code} para ID #{musicbrainz_id}"
        nil
      end
      
    rescue => e
      Rails.logger.error "Erro ao buscar detalhes no MusicBrainz para ID #{musicbrainz_id}: #{e.message}"
      nil
    end
  end
end