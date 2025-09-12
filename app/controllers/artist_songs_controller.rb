class ArtistSongsController < ApplicationController
  # ====================================================================
  # CALLBACKS E FILTROS
  # ====================================================================
  before_action :set_artist_song, only: [
    :show, :edit, :update, :destroy,
    :letra, :edit_letra, :update_letra,
    :edit_musica, :update_musica
  ]

  # A página de visualização da letra é pública
  skip_before_action :authenticate_user!, only: [:letra]

  # Verifica propriedade para ações de edição/remoção
  before_action :check_owner, only: [
    :edit, :update, :destroy,
    :edit_letra, :update_letra,
    :edit_musica, :update_musica
  ]

  # ====================================================================
  # AÇÕES CRUD
  # ====================================================================
  def index
    @artist_songs = ArtistSong.includes(:song, :artist).all
  end

  # Por compatibilidade com usos atuais: manter show (pode renderizar letra)
  def show
    # Se desejar comportamento distinto, altere para render :show
    render :letra
  end

  def new
    @artist_song = ArtistSong.new
  end

  def edit
    # @artist_song carregado em set_artist_song
  end

  def create
    @artist_song = ArtistSong.new(artist_song_params)

    respond_to do |format|
      if @artist_song.save
        format.html { redirect_to @artist_song, notice: "Música adicionada ao repertório com sucesso." }
        format.json { render :show, status: :created, location: @artist_song }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artist_song.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @artist_song.update(artist_song_params)
        format.html { redirect_to @artist_song, notice: "Música atualizada com sucesso." }
        format.json { render :show, status: :ok, location: @artist_song }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artist_song.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    artist_name = @artist_song.artist.name
    song_name = @artist_song.song.name
    @artist_song.destroy!
    respond_to do |format|
      format.html { redirect_to artist_path(@artist_song.artist), notice: "Música '#{song_name}' removida do repertório de #{artist_name}." }
      format.json { head :no_content }
    end
  end

  # ====================================================================
  # VISUALIZAÇÃO PÚBLICA DE LETRAS
  # GET /artist_songs/:id/letra
  # ====================================================================
  def letra
    # @artist_song já carregado em set_artist_song (com includes)
    @artist = @artist_song.artist
    @song = @artist_song.song
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: "Música não encontrada."
  end

  # ====================================================================
  # EDIÇÃO / ATUALIZAÇÃO DE LETRA
  # GET /artist_songs/:id/edit_letra
  # PATCH /artist_songs/:id/update_letra
  # ====================================================================
  def edit_letra
    @artist = @artist_song.artist
    @song = @artist_song.song
    @current_set = find_current_set
    Rails.logger.info "📝 Editando letra de: #{@song.name} - #{@artist.name}"
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: "Música não encontrada."
  end

  def update_letra
    @artist = @artist_song.artist
    @current_set = find_current_set

    cleaned = letra_params.to_h
    if cleaned['letra'].present?
      cleaned['letra'] = cleaned['letra'].gsub(/\r\n/, "\n").gsub(/\r/, "\n")
    end

    if @artist_song.update(cleaned)
      Rails.logger.info "✅ Letra atualizada: #{@artist_song.song.name}"
      if @current_set
        redirect_to show_sets_pub_artist_artist_set_path(@artist, @current_set), notice: 'Letra atualizada com sucesso!'
      else
        redirect_to artist_path(@artist), notice: 'Letra atualizada com sucesso!'
      end
    else
      Rails.logger.error "❌ Erro ao atualizar letra: #{@artist_song.errors.full_messages}"
      render :edit_letra, status: :unprocessable_entity
    end
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: "Música não encontrada."
  end

  # ====================================================================
  # EDIÇÃO / ATUALIZAÇÃO DE MÍDIA
  # GET /artist_songs/:id/edit_musica
  # PATCH /artist_songs/:id/update_musica
  # ====================================================================
  def edit_musica
    @artist = @artist_song.artist
    @song = @artist_song.song
    Rails.logger.info "🎵 Editando mídia de: #{@song.name} - #{@artist.name}"
  end

  def update_musica
    Rails.logger.info "🎵 Atualizando mídia: #{media_params.inspect}"

    if @artist_song.update(media_params)
      Rails.logger.info "✅ Mídia atualizada para: #{@artist_song.song.name}"

      if params[:set_id].present?
        current_set = @artist_song.artist.artist_sets.find_by(id: params[:set_id])
        if current_set
          redirect_to show_sets_pub_artist_artist_set_path(@artist_song.artist, current_set), notice: 'Informações de mídia atualizadas com sucesso!'
          return
        end
      end

      redirect_to @artist_song, notice: 'Informações de mídia atualizadas com sucesso!'
    else
      Rails.logger.error "❌ Erro ao atualizar mídia: #{@artist_song.errors.full_messages}"
      render :edit_musica, status: :unprocessable_entity
    end
  end

  private

  # Carrega artist_song com includes para performance
  def set_artist_song
    @artist_song = ArtistSong.includes(:song, :artist).find(params[:id])
    Rails.logger.info "🎵 ArtistSong carregado: ID #{@artist_song.id} - #{@artist_song.song.name}"
  rescue ActiveRecord::RecordNotFound
    Rails.logger.error "❌ ArtistSong não encontrado: ID #{params[:id]}"
    redirect_to root_path, alert: "Música não encontrada."
  end

  def check_owner
    unless current_user == @artist_song.artist.user
      Rails.logger.error "❌ Usuário sem permissão: #{current_user&.id} vs #{@artist_song.artist.user.id}"
      redirect_to root_path, alert: "Sem permissão para esta ação."
    end
  end

  def find_current_set
    if params[:set_id].present?
      set = @artist_song.artist.artist_sets.find_by(id: params[:set_id])
      return set if set
    end
    @artist_song.artist.artist_sets.order(created_at: :desc).first
  end

  def artist_song_params
    params.require(:artist_song).permit(
      :artist_id,
      :song_id,
      :letra,
      :duracao,
      :nome_arquivo_video,
      :nome_arquivo_som
    )
  end

  def letra_params
    params.require(:artist_song).permit(:letra)
  end

  def media_params
    # Ajuste: permita apenas os campos de mídia esperados
    params.require(:artist_song).permit(:duracao, :nome_arquivo_video, :nome_arquivo_som)
  end
end
