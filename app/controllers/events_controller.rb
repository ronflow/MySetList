class EventsController < ApplicationController
  before_action :set_event, only: %i[ show edit update destroy ]

  skip_before_action :authenticate_user!, only: [:showpublico]

  # GET /events or /events.json
  def index
    @events = Event.all
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
  end

  # GET /events/1 or /events/1.json
  def show
    @event = Event.find(params[:id])

  end



  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events or /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: "Event was successfully created." }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1 or /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
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
      params.expect(event: [ :event_date, :description ])
    end
end
