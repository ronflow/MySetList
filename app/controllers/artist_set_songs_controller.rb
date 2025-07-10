class ArtistSetSongsController < ApplicationController
  before_action :set_artist_set_song, only: %i[ show edit update destroy ]

  # GET /artist_set_songs or /artist_set_songs.json
  def index
    if params[:artist_set_id].present?
      @artist_set = ArtistSet.find(params[:artist_set_id])
      @artist_set_songs = @artist_set.artist_set_songs
    else
      @artist_set_songs = ArtistSetSong.all
    end
  end

  # GET /artist_set_songs/1 or /artist_set_songs/1.json
  def show
  end

  # GET /artist_set_songs/new
  def new
    @artist_set_song = ArtistSetSong.new
  end

  # GET /artist_set_songs/1/edit
  def edit
  end

  # POST /artist_set_songs or /artist_set_songs.json
  def create
    @artist_set_song = ArtistSetSong.new(artist_set_song_params)

    respond_to do |format|
      if @artist_set_song.save
        format.html { redirect_to @artist_set_song, notice: "Artist set song was successfully created." }
        format.json { render :show, status: :created, location: @artist_set_song }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artist_set_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artist_set_songs/1 or /artist_set_songs/1.json
  def update
    respond_to do |format|
      if @artist_set_song.update(artist_set_song_params)
        format.html { redirect_to @artist_set_song, notice: "Artist set song was successfully updated." }
        format.json { render :show, status: :ok, location: @artist_set_song }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artist_set_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artist_set_songs/1 or /artist_set_songs/1.json
  def destroy
    @artist_set_song.destroy!

    respond_to do |format|
      format.html { redirect_to artist_set_songs_path, status: :see_other, notice: "Artist set song was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist_set_song
      @artist_set_song = ArtistSetSong.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artist_set_song_params
      params.require(:artist_set_song).permit(:artist_set_id, :song_id)
    end
end
