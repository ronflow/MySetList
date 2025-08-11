class ArtistSongsController < ApplicationController
  before_action :set_artist_song, only: %i[ show edit update destroy ]

  skip_before_action :authenticate_user!, only: [:lyrics]

  # GET /artist_songs or /artist_songs.json
  def index
    @artist_songs = ArtistSong.all
  end

  # GET /artist_songs/1 or /artist_songs/1.json
  def show
  end

  # GET /artist_songs/new
  def new
    @artist_song = ArtistSong.new
  end

  # GET /artist_songs/1/edit
  def edit
  end

  # POST /artist_songs or /artist_songs.json
  def create
    @artist_song = ArtistSong.new(artist_song_params)

    respond_to do |format|
      if @artist_song.save
        format.html { redirect_to @artist_song, notice: "Artist song was successfully created." }
        format.json { render :show, status: :created, location: @artist_song }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artist_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artist_songs/1 or /artist_songs/1.json
  def update
    respond_to do |format|
      if @artist_song.update(artist_song_params)
        format.html { redirect_to @artist_song, notice: "Artist song was successfully updated." }
        format.json { render :show, status: :ok, location: @artist_song }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artist_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artist_songs/1 or /artist_songs/1.json
  def destroy
    @artist_song.destroy!

    respond_to do |format|
      format.html { redirect_to artist_songs_path, status: :see_other, notice: "Artist song was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def lyrics
    @artist_song = ArtistSong.find(params[:id])
  end

  def edit_lyrics
    @artist_song = ArtistSong.find(params[:id])
    @artist = @artist_song.artist
    @song = @artist_song.song

    # Verificar se este artist_song pertence ao artist correto
    unless @artist_song.artist_id == @artist.id
      redirect_to artist_path(@artist), alert: 'Acesso negado!'
      return
    end
    
    # Encontrar o set atual para retorno
    @current_set = find_current_set
  end

  def update_lyrics
    @artist_song = ArtistSong.find(params[:id])

    # Verificar se este artist_song pertence ao artist correto
    unless @artist_song.artist_id == @artist_song.artist.id
      redirect_to artist_path(@artist_song.artist), alert: 'Acesso negado!'
      return
    end

    @current_set = find_current_set

    # Limpar quebras de linha antes de salvar
    cleaned_params = artist_song_params
    if cleaned_params[:letra].present?
      cleaned_params[:letra] = cleaned_params[:letra]
        .gsub(/\r\n/, "\n")  # Windows para Unix
        .gsub(/\r/, "\n")    # Mac clássico para Unix
    end
    
    if @artist_song.update(cleaned_params)
      if @current_set
        redirect_to show_sets_pub_artist_artist_set_path(@artist_song.artist, @current_set), 
                    notice: 'Letra atualizada com sucesso!'
      else
        redirect_to artist_path(@artist_song.artist), 
                    notice: 'Letra atualizada com sucesso!'
      end
    else
      render :edit_lyrics
    end
  end
  
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_artist_song
    @artist_song = ArtistSong.find(params.expect(:id))
  end

  def find_current_set
    # Buscar set através de parâmetros primeiro
    if params[:set_id].present?
      return @artist_song.artist.artist_sets.find_by(id: params[:set_id])
    end
    
    # Se não encontrar, retornar o último set do artist
    @artist_song.artist.artist_sets.order(created_at: :desc).first
  end

  # Only allow a list of trusted parameters through.
  def artist_song_params
    params.expect(artist_song: [ :artist_id, :song_id, :letra ])
  end
end
