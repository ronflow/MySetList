class ArtistSetsController < ApplicationController
  before_action :set_artist_set, only: %i[ show edit update destroy ]

  # GET /artist_sets or /artist_sets.json
  def index
    if params[:artist_id].present?
      @artist = Artist.find(params[:artist_id])
      @artist_sets = @artist.artist_sets
    else
      @artist_sets = ArtistSet.all
    end
  end

  def public_songs
    @artist_set = ArtistSet.find(params[:id])
    @songs = @artist_set.songs

  # Busca
    # if params[:query].present?
    #   @songs = @songs.where("name ILIKE ?", "%#{params[:query]}%")
    # end

  # Ordenação (exemplo por nome)
    if params[:order] == "name"
      @songs = @songs.order(:name)
    end

    #Ordenação da busca de musica para inclusao no set
    if params[:query].present?
      @all_songs = Song.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @all_songs = []
    end
  end

  # GET /artist_sets/1 or /artist_sets/1.json
  def show
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
    @artist_set = ArtistSet.find(params[:id])
    if params[:song_ids].present?
      params[:song_ids].each do |song_id|
        ArtistSetSong.find_or_create_by(artist_set: @artist_set, song_id: song_id)
      end
      flash[:notice] = "Músicas adicionadas ao set!"
    else
      flash[:alert] = "Selecione pelo menos uma música."
    end
    redirect_to public_songs_artist_set_path(@artist_set)
  end

  # DELETE /artist_sets/1 or /artist_sets/1.json
  def destroy
    @artist_set.destroy!

    respond_to do |format|
      format.html { redirect_to artist_sets_path, status: :see_other, notice: "Artist set was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist_set
      @artist_set = ArtistSet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artist_set_params
      params.require(:artist_set).permit(:artist_id, :set_list_name)
    end
end
