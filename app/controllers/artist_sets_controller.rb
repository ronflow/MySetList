# app/controllers/artist_sets_controller.rb
class ArtistSetsController < ApplicationController
  before_action :set_artist, only: [:new, :create, :edit, :update, :destroy, :show_sets_pub, :adicionar_musicas, :remover_musicas, :show_set_web_pub, :buscar_musicbrainz, :adicionar_musicas_web]
  before_action :set_artist_set, only: [:show, :edit, :update, :destroy, :show_sets_pub, :adicionar_musicas, :remover_musicas, :show_set_web_pub, :buscar_musicbrainz, :adicionar_musicas_web]

  def show
    # Exibir detalhes do set
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @artist_set = @artist.artist_sets.build
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @artist_set = @artist.artist_sets.build(artist_set_params)
    
    if @artist_set.save
      redirect_to artist_path(@artist), notice: 'Set criado com sucesso!'
    else
      render :new
    end
  end

  def edit
    # Formulário de edição
  end

  def update
    if @artist_set.update(artist_set_params)
      redirect_to artist_path(@artist), notice: 'Set atualizado com sucesso!'
    else
      render :edit
    end
  end

  def destroy
    @artist_set.destroy
    redirect_to artist_path(@artist), notice: 'Set deletado com sucesso!'
  end

  def index
    @artist = Artist.find(params[:artist_id])
    @artist_sets = @artist.artist_sets

    respond_to do |format|
      format.json { render json: @artist_sets.select(:id, :set_list_name) }
    end
  end

  def show_sets_pub
    @artist = @artist_set.artist
    
    # Songs que já estão no set
    @songs = @artist_set.songs.distinct
    
    # Filtro para songs do set
    if params[:search_set].present?
      @songs = @songs.where("name ILIKE ?", "%#{params[:search_set]}%")
    end
    
    # Todas as songs disponíveis (da tabela songs)
    @all_songs = Song.all
    
    # Filtros para todas as songs
    if params[:query].present?
      @all_songs = @all_songs.where("name ILIKE ?", "%#{params[:query]}%")
    end
    
    # Ordenação
    if params[:order] == "name"
      @all_songs = @all_songs.order(:name)
    else
      @all_songs = @all_songs.order(:id)
    end
  end

  def adicionar_musicas
    song_ids = params[:song_ids].reject(&:blank?)
    
    if song_ids.any?
      added_count = 0
      
      song_ids.each do |song_id|
        song = Song.find(song_id)
        
        # 1. Criar artist_song se não existir
        artist_song = ArtistSong.find_or_create_by(
          artist: @artist,
          song: song
        ) do |as|
          # Aqui você pode definir a letra padrão se necessário
          as.letra = song.lyrics if song.lyrics.present?
        end
        
        # 2. CORRIGIR: Usar artist_song_id ao invés de song_id
        artist_set_song = ArtistSetSong.find_or_create_by(
          artist_set: @artist_set,
          artist_song_id: artist_song.id  # ✅ MUDANÇA AQUI
        )
        
        added_count += 1 if artist_set_song.persisted?
      end
      
      redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set),
                  notice: "#{added_count} música(s) adicionada(s) ao set com sucesso!"
    else
      redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set),
                  alert: "Nenhuma música foi selecionada."
    end
  end

  def remover_musicas
    song_ids = params[:song_ids]
    
    if song_ids.present?
      removed_count = 0
      
      song_ids.each do |song_id|
        # 1. Encontrar o artist_song primeiro
        artist_song = ArtistSong.find_by(
          artist: @artist,
          song_id: song_id
        )
        
        if artist_song
          # 2. Remove do set usando artist_song_id
          artist_set_song = ArtistSetSong.find_by(
            artist_set: @artist_set,
            artist_song_id: artist_song.id  # ✅ MUDANÇA AQUI
          )
          
          if artist_set_song&.destroy
            removed_count += 1
          end
        end
      end
      
      redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set),
                  notice: "#{removed_count} música(s) removida(s) do set!"
    else
      redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set),
                  alert: "Nenhuma música foi selecionada para remoção."
    end
  end

  def show_set_web_pub
    @artist = @artist_set.artist
    
    # Songs que já estão no set
    @songs = @artist_set.songs.distinct
    
    # SOLUÇÃO: Recuperar resultados do cache ao invés da session
    cache_key = session[:musicbrainz_cache_key]
    @musicbrainz_results = cache_key ? (Rails.cache.read(cache_key) || []) : []
    
    # Limpar cache e session após exibir (opcional)
    if cache_key && @musicbrainz_results.any?
      Rails.cache.delete(cache_key)
      session[:musicbrainz_cache_key] = nil
    end
    
    # Query de busca
    @search_query = params[:query] || session[:last_search_query]
    session[:last_search_query] = @search_query if params[:query].present?
  end

  def buscar_musicbrainz
    @artist = @artist_set.artist
    query = params[:query]
    
    if query.present?
      begin
        # CONECTAR ao MusicbrainzService
        results = MusicbrainzService.search(query)
        
        # Transformar resultados para o formato esperado pela view
        formatted_results = results.map do |result|
          {
            'title' => result[:nome],
            'artist' => result[:autor],
            'album' => 'N/A', # MusicbrainzService não retorna álbum
            'year' => 'N/A',  # MusicbrainzService não retorna ano
            'duration' => nil,
            'mbid' => result[:recording_mbid],
            'artist_mbid' => result[:artist_mbid],
            'cover_url' => result[:capa],
            'lyrics' => result[:letra]
          }
        end
        
      cache_key = "musicbrainz_results_#{@artist.id}_#{@artist_set.id}_#{Time.current.to_i}"
      Rails.cache.write(cache_key, formatted_results, expires_in: 30.minutes)
      session[:musicbrainz_cache_key] = cache_key
      session[:last_search_query] = query
        
        redirect_to show_set_web_pub_artist_artist_set_path(@artist, @artist_set),
                    notice: "#{formatted_results.count} resultado(s) encontrado(s) no MusicBrainz!"
      rescue => e
        Rails.logger.error("Erro ao buscar no MusicBrainz: #{e.message}")
        redirect_to show_set_web_pub_artist_artist_set_path(@artist, @artist_set),
                    alert: "Erro ao buscar no MusicBrainz: #{e.message}"
      end
    else
      redirect_to show_set_web_pub_artist_artist_set_path(@artist, @artist_set),
                  alert: "Digite um termo de busca."
    end
  end

  def adicionar_musicas_web
    @artist = @artist_set.artist
    selected_songs = params[:selected_songs] || []
    
    if selected_songs.any?
      added_count = 0
      
      selected_songs.each do |song_data|
        song_info = JSON.parse(song_data)
        
        # 1. Criar ou encontrar a song
        song = Song.find_or_create_by(
          name: song_info['title'],
          band: song_info['artist']
        ) do |s|
          s.mbid = song_info['mbid'] if song_info['mbid'].present?
          s.isrc = song_info['isrc'] if song_info['isrc'].present?
          s.tags = song_info['tags'] if song_info['tags'].present?
          s.lyrics = song_info['lyrics'] if song_info['lyrics'].present?
        end
        
        # 2. Criar artist_song se não existir
        artist_song = ArtistSong.find_or_create_by(
          artist: @artist,
          song: song
        ) do |as|
          as.letra = song_info['lyrics'] if song_info['lyrics'].present?
        end
        
        # 3. Criar artist_set_song usando artist_song_id
        artist_set_song = ArtistSetSong.find_or_create_by(
          artist_set: @artist_set,
          artist_song_id: artist_song.id
        )
        
        added_count += 1 if artist_set_song.persisted?
      end
      
      redirect_to show_set_web_pub_artist_artist_set_path(@artist, @artist_set),
                  notice: "#{added_count} música(s) adicionada(s) com sucesso!"
    else
      redirect_to show_set_web_pub_artist_artist_set_path(@artist, @artist_set),
                  alert: "Nenhuma música foi selecionada."
    end
  end

  private

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def set_artist_set
    @artist_set = @artist.artist_sets.find(params[:id])
  end

  def artist_set_params
    params.require(:artist_set).permit(:set_list_name, :artist_id)
  end
end