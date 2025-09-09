class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  # GET /artists or /artists.json
  def index
    if current_user
      @artists = current_user.artists
      
      if params[:query].present?
        @artists = @artists.where("name ILIKE ?", "%#{params[:query]}%")
      end
    else
      redirect_to new_sessions_path, alert: "Você precisa estar logado para ver os artistas."
      return
    end
  end

  def public_sets
    @artist_sets = @artist.artist_sets
    
    if params[:query].present?
      @artist_sets = @artist_sets.where("set_list_name ILIKE ?", "%#{params[:query]}%")
    end
  end

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

  def new
    @artist = Artist.new
  end

  def edit
  end

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

  # ✅ MÉTODO UPDATE CORRIGIDO
  def update
    # ✅ VERIFICAR SE É OPERAÇÃO DE ATRIBUIR TAGS
    if params[:action_type] == "assign_tags"
      handle_assign_tags
      return
    end
    
    # ✅ LÓGICA ORIGINAL DE UPDATE DO ARTIST
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

  def destroy
    @artist.destroy!

    respond_to do |format|
      format.html { redirect_to artists_path, status: :see_other, notice: "Artist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # ✅ APENAS UM MÉTODO SET_ARTIST
  def set_artist
    if current_user
      @artist = current_user.artists.find(params[:id])
    else
      @artist = Artist.find(params[:id])
    end
  end

  def artist_params
    params.require(:artist).permit(:name, :social_message, :link1, :link1_text, :link2, :link2_text, :logo, :video, :other_attributes)
  end

  def handle_assign_tags
    artist_set_id = params[:artist_set_id]
    set_tags = params[:set_tags]
    
    if artist_set_id.present?
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
    else
      redirect_to artist_path(@artist), alert: "Selecione um setlist primeiro"
    end
  rescue => e
    Rails.logger.error "❌ Erro ao atribuir tags: #{e.message}"
    redirect_to artist_path(@artist), alert: "Erro ao atribuir tags: #{e.message}"
  end
end