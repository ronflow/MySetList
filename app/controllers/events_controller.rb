class EventsController < ApplicationController
  before_action :set_event, only: %i[ show edit update destroy ]

  skip_before_action :authenticate_user!, only: [:showpublico]

  # GET /events or /events.json
  def index
    # Definir o artist
    if params[:artist_id].present?
      @artist = Artist.find_by(id: params[:artist_id])
      # Filtrar eventos apenas deste artist
      @events = @artist ? @artist.events : Event.none
    elsif current_user
      @artist = current_user.artists.first
      @events = @artist ? @artist.events : Event.all
    else
      @artist = Artist.where("name ILIKE ?", "%Flowerz%").first
      @events = @artist ? @artist.events : Event.all
    end
    
    # Ordenar por data
    @events = @events.order(:event_date)
  end


  # novo show para o publico do evento
  def showpublico
    @event = Event.find(params[:id])
  
    if params[:query].present?
      # Busca por músicas associadas ao evento
      @songs = Song.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @songs = Song.all
    end
    @songs = @songs.order(:name)
  end

  # GET /events/1 or /events/1.json
  def show
    @event = Event.find(params[:id])
  end

  # GET /events/new
  def new
    @event = Event.new # NÃO chame event_params aqui
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events or /events.json
  def create
    @event = Event.new(event_params) # event_params é usado APENAS aqui
    
    # Se não há artist_set_id mas há artist_set_ids, usar o primeiro
    if @event.artist_set_id.blank? && params[:event][:artist_set_ids].present?
      first_set_id = params[:event][:artist_set_ids].reject(&:blank?).first
      @event.artist_set_id = first_set_id if first_set_id.present?
    end
    
    # Se ainda não há set, usar o primeiro do artist
    if @event.artist_set_id.blank? && @event.artist.present?
      @event.artist_set_id = @event.artist.artist_sets.first&.id
    end

    respond_to do |format|
      if @event.save

        @event.create_event_sets!

        format.html { redirect_to @event, notice: "Event was successfully created." }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def showpublico
    @event = Event.find(params[:id])
    
    # Usar músicas do set se definido, senão todas as músicas
    all_songs = @event.available_songs
    
    if params[:query].present?
      @songs = all_songs.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @songs = all_songs
    end
    
    @songs = @songs.order(:name)
  end

  # PATCH/PUT /events/1 or /events/1.json
  def update
    respond_to do |format|
      
      if @event.update(event_params) # event_params é usado APENAS aqui também

        @event.create_event_sets!

        format.html { redirect_to @event, notice: "Event was successfully updated." }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1 or /events/1.json
  def destroy
    @event.destroy!

    respond_to do |format|
      format.html { redirect_to events_path, status: :see_other, notice: "Event was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:event_date, :description, :artist_id, :artist_set_id, artist_set_ids: [])
    end
end
