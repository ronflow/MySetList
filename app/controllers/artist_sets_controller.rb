class ArtistSetsController < ApplicationController
  before_action :set_artist_set, only: [:show, :edit, :update, :destroy, :adicionar_musicas]
  before_action :set_artist, only: [:index, :new, :create]

  # GET /artist_sets or /artist_sets.json
  def index
    if params[:artist_id].present?
      @artist = Artist.find(params[:artist_id])
      @artist_sets = @artist.artist_sets
    else
      @artist_sets = ArtistSet.all
    end
    
    respond_to do |format|
      format.html { 
        # Apenas redirecionar se for navegação normal (não AJAX)
        if params[:artist_id].present? && @artist_sets.any? && request.format.html?
          redirect_to artist_artist_set_path(@artist, @artist_sets.first)
        elsif params[:artist_id].present? && @artist_sets.empty?
          redirect_to new_artist_artist_set_path(@artist), alert: "Nenhum set encontrado para este artist."
        end
      }
      format.json { 
        # Retornar JSON simples sem usar jbuilder
        render json: @artist_sets.map { |set| 
          { 
            id: set.id, 
            set_list_name: set.set_list_name,
            name: set.set_list_name  # Para compatibilidade
          } 
        }
      }
    end
  rescue ActiveRecord::RecordNotFound
    respond_to do |format|
      format.html { redirect_to artists_path, alert: "Artist não encontrado." }
      format.json { render json: { error: "Artist não encontrado" }, status: :not_found }
    end
  end

  # GET /artist_sets/1 or /artist_sets/1.json
  def show
    # Funcionar exatamente como a antiga public_songs
    @songs = @artist_set.songs

    # Ordenação (exemplo por nome)
    if params[:order] == "name"
      @songs = @songs.order(:name)
    end

    # Busca de música para inclusão no set
    if params[:query].present?
      @all_songs = Song.where("name ILIKE ?", "%#{params[:query]}%")
    else
      # Mostrar todas as músicas quando não há busca
      @all_songs = Song.all
    end
  end

  def show_sets_pub
    @artist_set = ArtistSet.find(params[:id])
    @artist = @artist_set.artist
    
    # Músicas do set (com busca)
    @songs = @artist_set.songs
    if params[:search_set].present?
      @songs = @songs.where("name ILIKE ?", "%#{params[:search_set]}%")
    end
    @songs = @songs.order(:name)
    
    # Todas as músicas (com busca e ordenação)
    @all_songs = Song.all
    if params[:query].present?
      @all_songs = @all_songs.where("name ILIKE ?", "%#{params[:query]}%")
    end
    
    # Ordenação
    if params[:order] == "name"
      @all_songs = @all_songs.order(:name)
    else
      @all_songs = @all_songs.order(:id)
    end
    
    # Renderizar a view correta
    render :show_sets_pub
  end

  # GET /artist_sets/new
  def new
    if params[:artist_id].present?
      @artist = Artist.find(params[:artist_id])
      @artist_set = ArtistSet.new(artist: @artist)
    else
      @artist_set = ArtistSet.new
    end
  end

  # GET /artist_sets/1/edit
  def edit
  end

  # POST /artist_sets or /artist_sets.json
  def create
    Rails.logger.debug "=== CREATE DEBUG ==="
    Rails.logger.debug "Params: #{params.inspect}"
    Rails.logger.debug "@artist: #{@artist.inspect}"
    Rails.logger.debug "artist_set_params: #{artist_set_params.inspect}" 

    # Garantir que @artist está definido
    @artist = Artist.find(params[:artist_id]) if params[:artist_id].present?
    @artist ||= Artist.find(artist_set_params[:artist_id]) if artist_set_params[:artist_id].present?
    
    # Verificar se encontrou o artist
    unless @artist
      redirect_to artists_path, alert: "Artist não encontrado."
      return
    end

    @artist_set = @artist.artist_sets.build(artist_set_params)

    respond_to do |format|
      if @artist_set.save
        format.html { redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set), notice: "Set criado com sucesso!" }
        format.json { render :show, status: :created, location: @artist_set }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artist_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artist_sets/1 or /artist_sets/1.json
  def update
    respond_to do |format|
      if @artist_set.update(artist_set_params)
        # CORRIGIR: Redirecionar para show_sets_pub em vez de show
        format.html { redirect_to show_sets_pub_artist_artist_set_path(@artist, @artist_set), notice: "Artist set was successfully updated." }
        format.json { render :show, status: :ok, location: @artist_set }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artist_set.errors, status: :unprocessable_entity }
      end
    end
  end

  def adicionar_musicas
    Rails.logger.debug "=== ADICIONAR MUSICAS DEBUG ==="
    Rails.logger.debug "Params: #{params.inspect}"
    Rails.logger.debug "Song IDs: #{params[:song_ids]}"
    Rails.logger.debug "Artist Set: #{@artist_set.inspect}"

    @artist_set = ArtistSet.find(params[:id])
    song_ids = params[:song_ids].select(&:present?)

    if song_ids.any?
      added_count = 0
      song_ids.each do |song_id|
        song = Song.find(song_id)
        unless @artist_set.songs.include?(song)
          @artist_set.artist_set_songs.create(song: song)
          added_count += 1
        end
      end
      
      message = added_count == 1 ? 
        "Música adicionada com sucesso!" : 
        "#{added_count} músicas adicionadas com sucesso!"
      
      # Sempre redirecionar para show_sets_pub
      redirect_to show_sets_pub_artist_artist_set_path(@artist_set.artist, @artist_set), 
                  notice: message
    else
      redirect_to show_sets_pub_artist_artist_set_path(@artist_set.artist, @artist_set), 
                  alert: "Nenhuma música foi selecionada."
    end
  rescue => e
    redirect_to show_sets_pub_artist_artist_set_path(@artist_set.artist, @artist_set), 
                alert: "Erro ao adicionar músicas: #{e.message}"
  end

  def remover_musicas
    @artist_set = ArtistSet.find(params[:id])
    song_ids = params[:song_ids].select(&:present?)

    if song_ids.any?
      removed_count = 0
      song_ids.each do |song_id|
        song = Song.find(song_id)
        if @artist_set.songs.include?(song)
          @artist_set.artist_set_songs.where(song: song).destroy_all
          removed_count += 1
        end
      end
      
      message = removed_count == 1 ? 
        "Música removida com sucesso!" : 
        "#{removed_count} músicas removidas com sucesso!"
      
      # IMPORTANTE: Redirecionar para show_sets_pub em vez de show
      redirect_to show_sets_pub_artist_artist_set_path(@artist_set.artist, @artist_set), 
                  notice: message
    else
      redirect_to show_sets_pub_artist_artist_set_path(@artist_set.artist, @artist_set), 
                  alert: "Nenhuma música foi selecionada."
    end
  rescue => e
    redirect_to show_sets_pub_artist_artist_set_path(@artist_set.artist, @artist_set), 
                alert: "Erro ao remover músicas: #{e.message}"
  end

  # DELETE /artist_sets/1 or /artist_sets/1.json
  def destroy
    @artist = @artist_set.artist  # Guardar referência do artist antes de deletar
    @artist_set.destroy!

    respond_to do |format|
      # Redirecionar para a página do artist em vez de index
      format.html { redirect_to artist_path(@artist), notice: "Set deletado com sucesso." }
      format.json { head :no_content }
    end
  rescue => e
    respond_to do |format|
      format.html { redirect_to artist_path(@artist), alert: "Erro ao deletar set: #{e.message}" }
      format.json { render json: { error: e.message }, status: :unprocessable_entity }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_artist_set
    @artist_set = ArtistSet.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to artists_path, alert: "Set não encontrado."
  end

  def set_artist
    if params[:artist_id].present?
      @artist = Artist.find(params[:artist_id])
    else
      # Se não há artist_id nos params, tentar buscar pelo artist_set
      if params[:id].present? && action_name != 'create'
        @artist_set = ArtistSet.find(params[:id])
        @artist = @artist_set.artist
      end
    end
  rescue ActiveRecord::RecordNotFound
    redirect_to artists_path, alert: "Artist não encontrado."
  end

  def artist_set_params
    params.require(:artist_set).permit(:set_list_name, :description, :artist_id)
  end
end
