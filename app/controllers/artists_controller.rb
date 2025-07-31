class ArtistsController < ApplicationController
  before_action :set_artist, only: %i[ show edit update destroy ]

  # GET /artists or /artists.json
  def index
    if current_user
      @artists = current_user.artists
      
      # Adicionar funcionalidade de busca igual ao public_sets
      if params[:query].present?
        @artists = @artists.where("name ILIKE ?", "%#{params[:query]}%")
      end
    else
      redirect_to new_sessions_path, alert: "Você precisa estar logado para ver os artistas."
      return
    end
  end

  #Nova view de exibicao dos sets do artista
  def public_sets
    @artist_sets = @artist.artist_sets
    
    # Busca por sets
    if params[:query].present?
      @artist_sets = @artist_sets.where("set_list_name ILIKE ?", "%#{params[:query]}%")
    end
  end

  # GET /artists/1 or /artists/1.json
  def show
    @artist_sets = @artist.artist_sets
    
    # Busca por sets se houver query
    if params[:query].present?
      @artist_sets = @artist_sets.where("set_list_name ILIKE ?", "%#{params[:query]}%")
    end
  end

  # GET /artists/new
  def new
    @artist = Artist.new
  end

  # GET /artists/1/edit
  def edit
  end

  # POST /artists or /artists.json
  def create
    if current_user
      @artist = current_user.artists.build(artist_params)
    else
      @artist = Artist.new(artist_params)
    end

    respond_to do |format|
      if @artist.save
        format.html { redirect_to @artist, notice: "Artist was successfully created." }
        format.json { render :show, status: :created, location: @artist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artists/1 or /artists/1.json
  def update
    respond_to do |format|
      if @artist.update(artist_params)
        format.html { redirect_to @artist, notice: "Artist was successfully updated." }
        format.json { render :show, status: :ok, location: @artist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artists/1 or /artists/1.json
  def destroy
    @artist.destroy!

    respond_to do |format|
      format.html { redirect_to artists_path, status: :see_other, notice: "Artist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist
      if current_user
        @artist = current_user.artists.find(params[:id])
      else
        @artist = Artist.find(params[:id])
      end
    end

    # Only allow a list of trusted parameters through.
    def artist_params
      params.require(:artist).permit(:name, :logo, :link1, :link2)
    end
end
