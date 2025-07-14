class ArtistSetsController < ApplicationController
  before_action :set_artist_set, only: [:show, :edit, :update, :destroy, :adicionar_musicas, :index]

  # GET /artist_sets or /artist_sets.json
  def index
    @songs = @artist_set.songs

    # Ordenação (exemplo por nome)
    if params[:order] == "name"
      @songs = @songs.order(:name)
    end

    # Ordenação da busca de música para inclusão no set
    if params[:query].present?
      @all_songs = Song.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @all_songs = []
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
    @artist_set = ArtistSet.new(artist_set_params)

  respond_to do |format|
      if @artist_set.save
        format.html { redirect_to @artist_set, notice: "Artist set was successfully created." }
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
        format.html { redirect_to @artist_set, notice: "Artist set was successfully updated." }
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

    if params[:song_ids].present?
      success_count = 0
      params[:song_ids].each do |song_id|
        song = Song.find(song_id)
        unless @artist_set.songs.include?(song)
          @artist_set.songs << song
          success_count += 1
        end
      end
      redirect_to @artist_set, notice: "#{success_count} música(s) adicionada(s) com sucesso!"
    else
      redirect_to @artist_set, alert: "Nenhuma música selecionada."
    end

    def remover_musicas
      if params[:song_ids].present?
        params[:song_ids].each do |song_id|
          song = Song.find(song_id)
          @artist_set.songs.delete(song)
        end
        redirect_to @artist_set, notice: "Músicas removidas com sucesso!"
      else
        redirect_to @artist_set, alert: "Nenhuma música selecionada para remoção."
      end
    end
  end


  # DELETE /artist_sets/1 or /artist_sets/1.json
  def destroy
    artist = @artist_set.artist
    @artist_set.destroy!

    respond_to do |format|
      format.html { redirect_to artist_sets_path, status: :see_other, notice: "Artist set was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_artist_set
    begin
      @artist_set = ArtistSet.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to artists_path, alert: "Set não encontrado."
    end
  end

  def set_artist
    @artist = Artist.find(params[:artist_id]) if params[:artist_id]
  end

  def artist_set_params
    params.require(:artist_set).permit(:set_list_name, :description, :artist_id)
  end
end
