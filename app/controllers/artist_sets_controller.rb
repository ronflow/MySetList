# =============================================================================
# ARTIST SETS CONTROLLER
# =============================================================================
# Gerencia operações de conjuntos musicais (setlists) para artistas
# - Criação, edição e remoção de setlists
# - Adição/remoção de músicas nos sets
# - Integração com MusicBrainz para busca de músicas
# - Salvamento de dados ISRC para identificação internacional
# =============================================================================

class ArtistSetsController < ApplicationController
  # 🔒 FILTROS DE SEGURANÇA
  # Define ações que precisam carregar artist e artist_set antes da execução
  before_action :set_artist, only: [
    :new, :create, :edit, :update, :destroy, 
    :show_sets_pub, :adicionar_musicas, :remover_musicas, 
    :show_set_web_pub, :buscar_musicbrainz, :adicionar_musicas_web, :duplicate
  ]
  
  before_action :set_artist_set, only: [
    :show, :edit, :update, :destroy, 
    :show_sets_pub, :adicionar_musicas, :remover_musicas, 
    :show_set_web_pub, :buscar_musicbrainz, :adicionar_musicas_web
  ]

  # =============================================================================
  # 📋 AÇÕES BÁSICAS DE CRUD (Create, Read, Update, Delete)
  # =============================================================================

  # 👁️ VISUALIZAR DETALHES DO SET
  # Exibe informações específicas de um setlist
  def show
    # Placeholder - implementar conforme necessidade da view
    # Pode incluir: lista de músicas, duração total, estatísticas
  end

  # ➕ FORMULÁRIO PARA NOVO SET
  # Carrega página para criar um novo setlist
  def new
    @artist = Artist.find(params[:artist_id])
    @artist_set = @artist.artist_sets.build
  end

  # 💾 CRIAR NOVO SET
  # Processa dados do formulário e salva novo setlist no banco
  def create
    @artist = Artist.find(params[:artist_id])
    @artist_set = @artist.artist_sets.build(artist_set_params)
    
    if @artist_set.save
      # ✅ SUCESSO: Redireciona para página do artista com mensagem
      redirect_to artist_path(@artist), notice: 'Set criado com sucesso!'
    else
      # ❌ ERRO: Reexibe formulário com erros de validação
      render :new
    end
  end

  # ✏️ FORMULÁRIO PARA EDITAR SET
  # Carrega página de edição com dados atuais do setlist
  def edit
    # @artist_set já carregado pelo before_action
    # Placeholder para configurações específicas da view de edição
  end

  # 🔄 ATUALIZAR SET EXISTENTE
  # Processa alterações e atualiza setlist no banco
  def update
    if @artist_set.update(artist_set_params)
      # ✅ SUCESSO: Redireciona para página do artista
      redirect_to artist_path(@artist), notice: 'Set atualizado com sucesso!'
    else
      # ❌ ERRO: Reexibe formulário com erros
      render :edit
    end
  end

  # 🗑️ DELETAR SET
  # Remove setlist permanentemente do banco de dados
  def destroy
    @artist_set.destroy
    redirect_to artist_path(@artist), notice: 'Set deletado com sucesso!'
  end

  # 📊 LISTAR SETS EM JSON
  # Endpoint API para retornar lista de sets do artista
  def index
    @artist = Artist.find(params[:artist_id])
    @artist_sets = @artist.artist_sets

    respond_to do |format|
      # Retorna apenas ID e nome para componentes JavaScript
      format.json { render json: @artist_sets.select(:id, :set_list_name) }
    end
  end

  # =============================================================================
  # 🎵 GERENCIAMENTO DE MÚSICAS DO SET (Interface Pública)
  # =============================================================================

  # 📋 VISUALIZAR E GERENCIAR MÚSICAS DO SET
  # Interface principal para adicionar/remover músicas usando banco local
  # def show_sets_pub
  #   @artist = @artist_set.artist
    
  #   # 🎶 MÚSICAS ATUAIS DO SET
  #   # Carrega músicas que já fazem parte do setlist
  #   @songs = @artist_set.songs.distinct
    
  #   # 🔍 FILTRO PARA MÚSICAS DO SET
  #   # Permite buscar músicas específicas dentro do set atual
  #   if params[:search_set].present?
  #     @songs = @songs.where("name ILIKE ?", "%#{params[:search_set]}%")
  #   end
    
  #   # 📚 TODAS AS MÚSICAS DISPONÍVEIS
  #   # Carrega catálogo completo de músicas da tabela local
  #   @all_songs = Song.all
    
  #   # 🔍 FILTROS PARA CATÁLOGO GERAL
  #   # Busca por nome nas músicas disponíveis
  #   if params[:query].present?
  #     @all_songs = @all_songs.where("name ILIKE ?", "%#{params[:query]}%")
  #   end
    
  #   # 📊 ORDENAÇÃO DOS RESULTADOS
  #   if params[:order] == "name"
  #     @all_songs = @all_songs.order(:name)    # Alfabética
  #   else
  #     @all_songs = @all_songs.order(:id)      # Por ID (mais recentes)
  #   end
  # end

  def show_sets_pub
    # Busca artist_songs através de artist_set_songs
    @artist_set_song_relations = @artist_set.artist_set_songs.includes(:artist_song => :song)
    
    # Extrai as songs para compatibilidade com a view
    @songs = @artist_set_song_relations.map { |ass| ass.artist_song.song }.compact
    
    # Filtro de busca no set
    if params[:search_set].present?
      search_term = params[:search_set].downcase
      @songs = @songs.select { |song| 
        song.name.downcase.include?(search_term) || 
        song.band.downcase.include?(search_term) 
      }
    end
    
    # Busca geral para adicionar músicas
    if params[:query].present?
      @all_songs = Song.joins(:artist_songs)
                      .where(artist_songs: { artist: @artist })
                      .where("songs.name ILIKE ? OR songs.band ILIKE ?", 
                             "%#{params[:query]}%", "%#{params[:query]}%")
                      .distinct
    else
      @all_songs = Song.joins(:artist_songs)
                      .where(artist_songs: { artist: @artist })
                      .distinct
                      .limit(50) # Limita para performance
    end
  end

  # ➕ ADICIONAR MÚSICAS AO SET (do banco local)
  # Adiciona músicas selecionadas do catálogo local ao setlist
  # def adicionar_musicas
  #   song_ids = params[:song_ids].reject(&:blank?)
    
  #   if song_ids.any?
  #     added_count = 0
      
  #     song_ids.each do |song_id|
  #       song = Song.find(song_id)
        
  #       # 🔗 1. CRIAR LIGAÇÃO ARTISTA-MÚSICA
  #       # Relaciona música com artista (permite letra personalizada)
  #       artist_song = ArtistSong.find_or_create_by(
  #         artist: @artist,
  #         song: song
  #       ) do |as|
  #         # Copia letra da música original se disponível
  #         as.letra = song.lyrics if song.lyrics.present?
  #       end
        
  #       # 🎵 2. ADICIONAR AO SET
  #       # Cria relacionamento entre set e a ligação artista-música
  #       artist_set_song = ArtistSetSong.find_or_create_by(
  #         artist_set: @artist_set,
  #         artist_song_id: artist_song.id  # ⚠️ IMPORTANTE: usa artist_song_id
  #       )
        
  #       added_count += 1 if artist_set_song.persisted?
  #     end
      
  #     # ✅ FEEDBACK DE SUCESSO
  #     redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set),
  #                 notice: "#{added_count} música(s) adicionada(s) ao set com sucesso!"
  #   else
  #     # ⚠️ AVISO: Nenhuma música selecionada
  #     redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set),
  #                 alert: "Nenhuma música foi selecionada."
  #   end
  # end

  def adicionar_musicas
    song_ids = params[:song_ids]
    
    if song_ids.present?
      added_count = 0
      song_ids.each do |song_id|
        song = Song.find(song_id)
        # Encontra o artist_song correspondente
        artist_song = @artist.artist_songs.find_by(song: song)
        
        if artist_song && !@artist_set.artist_set_songs.exists?(artist_song: artist_song)
          @artist_set.artist_set_songs.create!(artist_song: artist_song)
          added_count += 1
        end
      end
      
      redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set),
                  notice: "#{added_count} música(s) adicionada(s) ao set."
    else
      redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set),
                  alert: "Nenhuma música selecionada."
    end
  end

  # ➖ REMOVER MÚSICAS DO SET
  # Remove músicas selecionadas do setlist (mantém no catálogo)
  # def remover_musicas
  #   song_ids = params[:song_ids]
    
  #   if song_ids.present?
  #     removed_count = 0
      
  #     song_ids.each do |song_id|
  #       # 🔍 1. ENCONTRAR LIGAÇÃO ARTISTA-MÚSICA
  #       artist_song = ArtistSong.find_by(
  #         artist: @artist,
  #         song_id: song_id
  #       )
        
  #       if artist_song
  #         # 🗑️ 2. REMOVER DO SET
  #         # Remove apenas do set, mantém ligação artista-música
  #         artist_set_song = ArtistSetSong.find_by(
  #           artist_set: @artist_set,
  #           artist_song_id: artist_song.id  # ⚠️ IMPORTANTE: usa artist_song_id
  #         )
          
  #         if artist_set_song&.destroy
  #           removed_count += 1
  #         end
  #       end
  #     end
      
  #     # ✅ FEEDBACK DE SUCESSO
  #     redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set),
  #                 notice: "#{removed_count} música(s) removida(s) do set!"
  #   else
  #     # ⚠️ AVISO: Nenhuma música selecionada
  #     redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set),
  #                 alert: "Nenhuma música foi selecionada para remoção."
  #   end
  # end

  def remover_musicas
    song_ids = params[:song_ids]
    
    if song_ids.present?
      removed_count = 0
      song_ids.each do |song_id|
        song = Song.find(song_id)
        artist_song = @artist.artist_songs.find_by(song: song)
        
        if artist_song
          artist_set_song = @artist_set.artist_set_songs.find_by(artist_song: artist_song)
          if artist_set_song
            artist_set_song.destroy
            removed_count += 1
          end
        end
      end
      
      redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set),
                  notice: "#{removed_count} música(s) removida(s) do set."
    else
      redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set),
                  alert: "Nenhuma música selecionada."
    end
  end

  # =============================================================================
  # 🌐 INTEGRAÇÃO COM MUSICBRAINZ (Busca External)
  # =============================================================================

  # 🔍 INTERFACE DE BUSCA MUSICBRAINZ
  # Exibe resultados de busca do MusicBrainz e músicas atuais do set
  def show_set_web_pub
    @artist = @artist_set.artist
    
    # 🎵 MÚSICAS ATUAIS DO SET
    @songs = @artist_set.songs.distinct
    
    # 💾 RECUPERAR RESULTADOS DO CACHE
    # Busca resultados da última pesquisa MusicBrainz feita
    cache_key = session[:musicbrainz_cache_key]
    @musicbrainz_results = cache_key ? (Rails.cache.read(cache_key) || []) : []
    
    # 🧹 LIMPEZA AUTOMÁTICA DO CACHE
    # Remove dados após exibição para economizar memória
    if cache_key && @musicbrainz_results.any?
      Rails.cache.delete(cache_key)
      session[:musicbrainz_cache_key] = nil
    end
    
    # 📝 MANTER TERMO DE BUSCA
    # Preserva última consulta para reexibição no formulário
    @search_query = params[:query] || session[:last_search_query]
    session[:last_search_query] = @search_query if params[:query].present?
  end

  # 🔎 BUSCAR MÚSICAS NO MUSICBRAINZ
  # Realiza consulta na API externa e armazena resultados temporariamente
  def buscar_musicbrainz
    @artist = @artist_set.artist
    query = params[:query]
    
    if query.present?
      begin
        # 🌐 CHAMADA PARA API MUSICBRAINZ
        # Usa serviço personalizado para busca multi-região
        results = MusicbrainzService.search(query)

        # ✅ DEBUG: Verificar se ISRC está vindo do service
        Rails.logger.info "=== DEBUG MUSICBRAINZ SERVICE ==="
        results.each_with_index do |result, index|
          Rails.logger.info "Resultado #{index + 1}:"
          Rails.logger.info "  Nome: #{result[:nome]}"
          Rails.logger.info "  ISRC do service: #{result[:isrc] || 'VAZIO'}"
          Rails.logger.info "  MBID: #{result[:recording_mbid]}"
        end
        Rails.logger.info "================================="
        
        # 🔄 FORMATAÇÃO DOS RESULTADOS
        # Converte formato interno para estrutura esperada pela view
        formatted_results = results.map do |result|
          {
            'title' => result[:nome],                    # Nome da música
            'artist' => result[:autor],                  # Nome do artista
            'album' => 'N/A',                           # Álbum (não disponível)
            'year' => 'N/A',                            # Ano (não disponível)
            'duration' => nil,                          # Duração (não disponível)
            'mbid' => result[:recording_mbid],          # ID MusicBrainz da gravação
            'artist_mbid' => result[:artist_mbid],      # ID MusicBrainz do artista
            'cover_url' => result[:capa],               # URL da capa do álbum
            'lyrics' => result[:letra],                 # Letra da música
            'isrc' => result[:isrc]                     # ⭐ CÓDIGO ISRC INTERNACIONAL
          }
        end
        
        # 💾 ARMAZENAMENTO EM CACHE
        # Salva resultados temporariamente para exibição
        cache_key = "musicbrainz_results_#{@artist.id}_#{@artist_set.id}_#{Time.current.to_i}"
        Rails.cache.write(cache_key, formatted_results, expires_in: 30.minutes)
        session[:musicbrainz_cache_key] = cache_key
        session[:last_search_query] = query
          
        # ✅ REDIRECIONAMENTO COM SUCESSO
        redirect_to show_set_web_pub_artist_artist_set_path(@artist, @artist_set),
                    notice: "#{formatted_results.count} resultado(s) encontrado(s) no MusicBrainz!"
                    
      rescue => e
        # ❌ TRATAMENTO DE ERROS
        Rails.logger.error("Erro ao buscar no MusicBrainz: #{e.message}")
        redirect_to show_set_web_pub_artist_artist_set_path(@artist, @artist_set),
                    alert: "Erro ao buscar no MusicBrainz: #{e.message}"
      end
    else
      # ⚠️ VALIDAÇÃO: Termo de busca obrigatório
      redirect_to show_set_web_pub_artist_artist_set_path(@artist, @artist_set),
                  alert: "Digite um termo de busca."
    end
  end

  # ➕ ADICIONAR MÚSICAS DO MUSICBRAINZ AO SET
  # Processa músicas selecionadas da busca externa e adiciona ao catálogo/set
  def adicionar_musicas_web
    @artist = @artist_set.artist
    selected_songs = params[:selected_songs] || []
    
    if selected_songs.any?
      added_count = 0
      
      selected_songs.each do |song_data|
        # 📊 PARSING DOS DADOS JSON
        song_info = JSON.parse(song_data)

        # 🐛 DEBUG PARA ISRC
        # Log detalhado para troubleshooting da gravação de ISRC
        Rails.logger.info "=== DEBUG ISRC ==="
        Rails.logger.info "Música: #{song_info['title']}"
        Rails.logger.info "ISRC recebido: #{song_info['isrc']}"
        Rails.logger.info "Dados completos: #{song_info}"
        Rails.logger.info "=================="
        
        # 🎵 1. CRIAR/ENCONTRAR MÚSICA NO CATÁLOGO LOCAL
        # Busca por nome+banda ou cria nova entrada
        song = Song.find_or_create_by(
          name: song_info['title'],
          band: song_info['artist']
        ) do |s|
          # ⭐ DADOS INICIAIS (apenas na criação)
          s.mbid = song_info['mbid'] if song_info['mbid'].present?
          s.isrc = song_info['isrc'] if song_info['isrc'].present?
          s.tags = song_info['tags'] if song_info['tags'].present?
          s.lyrics = song_info['lyrics'] if song_info['lyrics'].present?
        end

        # 🔄 ATUALIZAÇÃO FORÇADA DO ISRC
        # Garante que ISRC seja salvo mesmo em músicas existentes
        if song_info['isrc'].present?
          Rails.logger.info "Tentando atualizar ISRC: #{song_info['isrc']}"
          result = song.update!(isrc: song_info['isrc'])
          Rails.logger.info "ISRC atualizado com sucesso: #{result}"
          Rails.logger.info "ISRC na base após update: #{song.reload.isrc}"
        end
        
        # 🔗 2. CRIAR LIGAÇÃO ARTISTA-MÚSICA
        # Relaciona música importada com artista atual
        artist_song = ArtistSong.find_or_create_by(
          artist: @artist,
          song: song
        ) do |as|
          # Copia letra do MusicBrainz se disponível
          as.letra = song_info['lyrics'] if song_info['lyrics'].present?
        end
        
        # 🎵 3. ADICIONAR AO SET
        # Inclui música no setlist atual
        artist_set_song = ArtistSetSong.find_or_create_by(
          artist_set: @artist_set,
          artist_song_id: artist_song.id
        )
        
        added_count += 1 if artist_set_song.persisted?
      end
      
      # ✅ FEEDBACK DE SUCESSO
      redirect_to show_set_web_pub_artist_artist_set_path(@artist, @artist_set),
                  notice: "#{added_count} música(s) adicionada(s) com sucesso!"
    else
      # ⚠️ AVISO: Nenhuma música selecionada
      redirect_to show_set_web_pub_artist_artist_set_path(@artist, @artist_set),
                  alert: "Nenhuma música foi selecionada."
    end
  end

  # GET /artists/:artist_id/artist_sets/:id/generate_xml
  # Gera arquivo XML do setlist para download
  # def generate_xml
  #   @artist_set = ArtistSet.find(params[:id])
  #   @artist = @artist_set.artist
    
  #   Rails.logger.info "🎵 Gerando XML para setlist: #{@artist_set.set_list_name}"
    
  #   # ✅ MÉTODO ALTERNATIVO: Buscar músicas via IDs
  #   begin
  #     # Tenta usar a associação song primeiro
  #     @songs = @artist_set.artist_set_songs.includes(:song).order(:created_at).map(&:song)
  #   rescue ActiveRecord::AssociationNotFoundError
  #     # Se não funcionar, usa song_id diretamente
  #     song_ids = @artist_set.artist_set_songs.pluck(:song_id)
  #     @songs = Song.where(id: song_ids)
      
  #     Rails.logger.warn "⚠️ Usando song_id diretamente - verificar associação ArtistSetSong"
  #   end
    
  #   Rails.logger.info "📋 Músicas no set: #{@songs.count}"
    
  #   if @songs.empty?
  #     redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set), 
  #                 alert: 'Nenhuma música encontrada no set para gerar XML'
  #     return
  #   end
    
  #   # Gera conteúdo XML
  #   xml_content = generate_setlist_xml(@songs)
    
  #   # Nome do arquivo
  #   filename = "#{@artist_set.set_list_name.parameterize}.xml"
    
  #   # Envia arquivo para download
  #   send_data xml_content,
  #     filename: filename,
  #     type: 'application/xml',
  #     disposition: 'attachment'
      
  #   Rails.logger.info "✅ XML gerado com sucesso: #{filename}"
  # end

  def generate_xml
    begin
      # Busca músicas do set usando artist_song_id
      @songs = @artist_set.songs
      
      if @songs.empty?
        redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set), 
                    alert: 'Nenhuma música encontrada no set para gerar XML'
        return
      end
      
      # Gera conteúdo XML
      xml_content = generate_setlist_xml(@songs)
      
      # Nome do arquivo
      filename = "#{@artist_set.set_list_name.parameterize}.xml"
      
      # Envia arquivo para download
      send_data xml_content,
        filename: filename,
        type: 'application/xml',
        disposition: 'attachment'
        
      Rails.logger.info "✅ XML gerado com sucesso: #{filename}"
    rescue => e
      Rails.logger.error "❌ Erro ao gerar XML: #{e.message}"
      redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set), 
                  alert: "Erro ao gerar XML: #{e.message}"
    end
  end

  # ✅ MÉTODO DUPLICATE
  def duplicate
    begin
      # Implementar lógica de duplicação aqui
      new_name = "#{@artist_set.set_list_name} (Cópia)"
      
      duplicated_set = @artist_set.dup
      duplicated_set.set_list_name = new_name
      duplicated_set.save!
      
      # Copiar as músicas do set
      @artist_set.artist_set_songs.each do |song_relation|
        duplicated_set.artist_set_songs.create!(
          artist_song_id: song_relation.artist_song_id
        )
      end
      
      redirect_to artist_path(@artist), 
                  notice: "Setlist duplicado com sucesso como '#{new_name}'"
    rescue => e
      Rails.logger.error "❌ Erro ao duplicar: #{e.message}"
      redirect_to artist_path(@artist), 
                  alert: "Erro ao duplicar setlist: #{e.message}"
    end
  end

  private
  # =============================================================================
  # 🔒 MÉTODOS PRIVADOS (Helpers e Segurança)
  # =============================================================================

  # 👤 CARREGAR ARTISTA
  # Before_action para carregar artista baseado no parâmetro da URL
  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  # 🎵 CARREGAR SET DO ARTISTA
  # Before_action para carregar setlist específico do artista
  def set_artist_set
    @artist_set = @artist.artist_sets.find(params[:id])
  end

  # 🛡️ PARÂMETROS PERMITIDOS
  # Strong parameters para segurança - define campos aceitos do formulário
  def artist_set_params
    params.require(:artist_set).permit(:set_list_name, :artist_id, :description, :set_tags)
  end

  # Gera conteúdo XML do setlist
  def generate_setlist_xml(songs)
    xml = []
    
    # Abertura do XML
    xml << '<?xml version="1.0" encoding="UTF-8"?>'
    xml << '<Sounds>'
    
    # Para cada música, gera um elemento Sound
    songs.each do |song|
      # Sanitiza nome da música para usar como filename
      safe_filename = song.name.gsub(/[^\w\s-]/, '').gsub(/\s+/, ' ').strip
      
      xml << '  <Sound>'
      xml << "    <SoundName>#{CGI.escapeHTML(song.name)}</SoundName>"
      xml << "    <SoundFilename>#{safe_filename}.mp3</SoundFilename>"
      xml << "    <SoundVolume>1.0</SoundVolume>"
      xml << '  </Sound>'
    end
    
    # Fechamento do XML
    xml << '</Sounds>'
    
    # Junta todas as linhas
    xml.join("\n")
  end
end