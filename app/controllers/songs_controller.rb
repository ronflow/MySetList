# app/controllers/songs_controller.rb

require 'csv'

class SongsController < ApplicationController

  def import_csv
    # Exibe o formulário de upload
  end

  def process_csv
    if params[:csv_file].blank?
      flash[:alert] = "Selecione um arquivo CSV."
      redirect_to import_csv_songs_path and return
    end

    file = params[:csv_file]
    # Passo 4: Sanitize o conteúdo antes de processar
    content = file.read.force_encoding('UTF-8').gsub(/\r\n?/, "\n").gsub(/\n+/, "\n")

    delimiter = content.include?(';') ? ';' : ','

    # Passo 3: Adapte o código para ignorar linhas problemáticas
    begin
      lines = []
      CSV.parse(content, col_sep: delimiter).each_with_index do |row, idx|
        next if idx == 0 # pula o cabeçalho
        row = row.map { |cell| cell.to_s.strip }
        next if row.compact.empty? || row.all?(&:blank?)
        lines << row if row.size == 4
      end

      Rails.logger.info "CONTENT: #{content.inspect}"
      Rails.logger.info "DELIMITER: #{delimiter}"
      Rails.logger.info "LINES: #{lines.inspect}"

      if lines.size < 1
        flash[:alert] = "O arquivo deve conter pelo menos uma linha de dados."
        redirect_to import_csv_songs_path and return
      end

      unless lines.all? { |l| l.size == 4 }
        flash[:alert] = "Todas as linhas devem ter exatamente 4 colunas."
        redirect_to import_csv_songs_path and return
      end

      unless lines.all? { |l| l.join =~ /\A[a-zA-Z0-9 ,;]+\z/ }
        flash[:alert] = "O arquivo não pode conter caracteres especiais."
        redirect_to import_csv_songs_path and return
      end

      session[:csv_lines] = lines
      session[:csv_index] = 0
      session[:imported_count] = 0
      redirect_to import_line_songs_path
    rescue => e
      flash[:alert] = "Erro ao processar o arquivo: #{e.message}"
      redirect_to import_csv_songs_path
    end
  end

  def import_line
    @csv_lines = session[:csv_lines] || []
    @csv_index = session[:csv_index] || 0
    @imported_count = session[:imported_count] || 0

    if @csv_index >= @csv_lines.size
      flash[:notice] = "Importação finalizada. Total importado: #{@imported_count}"
      session[:csv_lines] = nil
      session[:csv_index] = nil
      session[:imported_count] = nil
      redirect_to songs_path and return
    end

    line = @csv_lines[@csv_index]
    song_name, band, letra_csv, _extra = line

    @song = Song.find_by(name: song_name, band: band)
    if @song
      @artist_song = ArtistSong.find_by(song_id: @song.id)
      @letra_atual = @artist_song&.letra.to_s[0..49]
      @letra_csv = letra_csv[0..49]
      @found = true
    else
      @found = false
      @musicbrainz_results = [
        { id: 1, title: "#{song_name} (MB)", artist: band },
        { id: 2, title: "#{song_name} Remix", artist: band }
      ]
    end
    @song_name = song_name
    @band = band
    @letra_csv_full = letra_csv
  end

  def import_line_action
    @csv_lines = session[:csv_lines]
    @csv_index = session[:csv_index]
    @imported_count = session[:imported_count] || 0
    line = @csv_lines[@csv_index]
    song_name, band, letra_csv, _extra = line

    case params[:action_type]
    when "import_lyrics"
      song = Song.find_by(name: song_name, band: band)
      artist_song = ArtistSong.find_or_create_by(song_id: song.id)
      artist_song.update(letra: letra_csv)
      session[:imported_count] = @imported_count + 1
      session[:csv_index] = @csv_index + 1
      flash[:notice] = "Letra importada!"
    when "import_music"
      # Cria song e artist_song
      song = Song.create(name: song_name, band: band)
      ArtistSong.create(song_id: song.id, letra: letra_csv)
      session[:imported_count] = @imported_count + 1
      session[:csv_index] = @csv_index + 1
      flash[:notice] = "Música e letra importadas!"
    when "next"
      session[:csv_index] = @csv_index + 1
    when "cancel"
      session[:csv_lines] = nil
      session[:csv_index] = nil
      session[:imported_count] = nil
      redirect_to songs_path and return
    end

    redirect_to import_line_songs_path
  end

  def cancel_import
    session[:csv_lines] = nil
    session[:csv_index] = nil
    session[:imported_count] = nil
    redirect_to songs_path
  end

  skip_before_action :authenticate_user!, only: [:lyrics]
  before_action :set_song, only: [:show, :lyrics]

  def index
    if params[:event_id].present?
      @event = Event.find(params[:event_id])
      @query = params[:query]
      songs = Song.all
      songs = songs.where("name ILIKE ?", "%#{@query}%") if @query.present?
      @songs = songs.order(:name).page(params[:page]).per(5)
    elsif params[:artist_id].present?
      # Buscar songs do artist específico
      @artist = Artist.find(params[:artist_id])
      @songs = @artist.songs.order(:name)
    else
      @songs = Song.all.order(:name)
    end
  end
  
  def show
    @artists = @song.artists
  end
  
  def lyrics
    # Sempre renderizar a mesma view - mais simples!
    if @song.lyrics.present?
      render :lyrics
    else
      # Renderiza uma mensagem de indisponibilidade sem redirecionar
      render :lyrics_unavailable, locals: { song: @song }
    end
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :lyrics, :tags, :band, :mbid, :isrc)
  end
end