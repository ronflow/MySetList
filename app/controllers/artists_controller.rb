class ArtistsController < ApplicationController
  before_action :authenticate_user!, except: []
  before_action :set_artist, only: [:show, :edit, :update, :destroy, :public_sets, :purge_logo, :purge_video]
  
  # GET /artists
  def index
    if current_user
      @artists = current_user.artists
      @artists = @artists.where("name ILIKE ?", "%#{params[:query]}%") if params[:query].present?
    else
      redirect_to new_sessions_path, alert: "Você precisa estar logado para ver os artistas."
    end
  end

  # Listagem pública de sets (se aplicável)
  def public_sets
    @artist_sets = @artist.artist_sets
    @artist_sets = @artist_sets.where("set_list_name ILIKE ?", "%#{params[:query]}%") if params[:query].present?
  end

  # GET /artists/:id
  def show
    if params[:query].present?
      @artist_sets = @artist.artist_sets
                            .where("set_list_name ILIKE ?", "%#{params[:query]}%")
                            .order(:set_list_name)
    elsif params[:search_tags].present?
      @artist_sets = @artist.artist_sets.with_tags(params[:search_tags]).order(:set_list_name)
    else
      @artist_sets = @artist.artist_sets.order(:set_list_name)
    end
    @artist_sets = @artist_sets.includes(:artist_set_songs)
  end

  # GET /artists/new
  def new
    @artist = Artist.new
  end

  # GET /artists/:id/edit
  def edit
  end

  # POST /artists
  def create
    # Como não há mais user_id direto, apenas cria e depois vincula via artist_users
    @artist = Artist.new(artist_params)
    respond_to do |format|
      if @artist.save
        # Vincula o usuário atual como owner (se existir lógica de owner)
        @artist.artist_users.find_or_create_by!(user: current_user, owner: true) if current_user
        format.html { redirect_to @artist, notice: "Artist was successfully created." }
        format.json { render :show, status: :created, location: @artist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artists/:id
  def update
    # Ação especial: atribuição de tags em sets
    if params[:action_type] == "assign_tags"
      handle_assign_tags
      return
    end

    # Remover logo/vídeo via checkbox/param opcional (ex: params[:remove_logo] == "1")
    if params[:remove_logo] == "1" && @artist.logo.attached?
      @artist.logo.purge
    end
    if params[:remove_video] == "1" && @artist.video.attached?
      @artist.video.purge
    end

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

  # DELETE /artists/:id
  def destroy
    @artist.destroy!
    respond_to do |format|
      format.html { redirect_to artists_path, status: :see_other, notice: "Artist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  # DELETE logo (rota separada opcional)
  def purge_logo
    if @artist.logo.attached?
      @artist.logo.purge
      redirect_to edit_artist_path(@artist), notice: "Logo removida."
    else
      redirect_to edit_artist_path(@artist), alert: "Nenhuma logo para remover."
    end
  end

  # DELETE vídeo (rota separada opcional)
  def purge_video
    if @artist.video.attached?
      @artist.video.purge
      redirect_to edit_artist_path(@artist), notice: "Vídeo removido."
    else
      redirect_to edit_artist_path(@artist), alert: "Nenhum vídeo para remover."
    end
  end

  private

  # Carrega artista garantindo acesso do usuário atual via relação many-to-many
  def set_artist
    if current_user
      @artist = current_user.artists.where(id: params[:id]).first
      unless @artist
        # fallback (caso queira permitir acesso público a show)
        @artist = Artist.find_by(id: params[:id])
      end
    else
      @artist = Artist.find_by(id: params[:id])
    end
    unless @artist
      redirect_to artists_path, alert: "Artista não encontrado." and return
    end
  end

  def artist_params
    params.require(:artist).permit(
      :name, :social_message,
      :link1, :link1_text,
      :link2, :link2_text,
      :logo, :video,
      :other_attributes
    )
  end

  # Lida com atribuição de tags em um set específico
  def handle_assign_tags
    artist_set_id = params[:artist_set_id]
    set_tags      = params[:set_tags]

    unless artist_set_id.present?
      redirect_to artist_path(@artist), alert: "Selecione um setlist primeiro" and return
    end

    artist_set = @artist.artist_sets.find(artist_set_id)

    if params[:clear_tags].present?
      artist_set.update!(set_tags: nil)
      redirect_to artist_path(@artist), notice: "Tags removidas do setlist '#{artist_set.set_list_name}'"
    elsif set_tags.present?
      artist_set.update!(set_tags: set_tags.strip)
      redirect_to artist_path(@artist), notice: "Tags atribuídas ao setlist '#{artist_set.set_list_name}'"
    else
      redirect_to artist_path(@artist), alert: "Digite as tags para atribuir ao setlist"
    end
  rescue => e
    Rails.logger.error "Erro ao atribuir tags: #{e.message}"
    redirect_to artist_path(@artist), alert: "Erro ao atribuir tags: #{e.message}"
  end
end
