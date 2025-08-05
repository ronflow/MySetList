# app/controllers/events_controller.rb

class EventsController < ApplicationController
  before_action :set_event, only: %i[ show edit update destroy showpublico ]

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

  # Página pública do evento - ROBUSTA e DEFENSIVA
  def showpublico
    @event = Event.find(params[:id])
    @artist = @event.artist
    
    # Buscar songs de forma mais simples e robusta
    @songs = []
    
    begin
      # 1. Tentar buscar através dos artist_songs do artist
      if @artist&.artist_songs&.any?
        @songs = @artist.songs.distinct
      end
      
      # 2. Se não encontrou, buscar todas as songs que o artist tem acesso
      if @songs.empty?
        # Buscar songs através de qualquer relacionamento
        song_ids = []
        
        # Através de artist_songs
        if @artist&.artist_songs&.any?
          song_ids += @artist.artist_songs.pluck(:song_id)
        end
        
        # Através de artist_sets
        if @artist&.artist_sets&.any?
          @artist.artist_sets.each do |artist_set|
            song_ids += artist_set.artist_songs.pluck(:song_id) if artist_set.artist_songs.any?
          end
        end
        
        @songs = Song.where(id: song_ids.uniq) if song_ids.any?
      end
      
      # 3. Fallback: se ainda não encontrou, usar todas as songs do sistema
      if @songs.empty?
        @songs = Song.limit(10) # Limitar para teste
      end
      
    rescue => e
      # Em caso de erro, usar approach mais simples
      @songs = @artist&.songs || Song.limit(10)
    end
    
    # Aplicar filtro de busca se presente
    if params[:query].present? && @songs.respond_to?(:where)
      @songs = @songs.where("name ILIKE ?", "%#{params[:query]}%")
    end
    
    # Ordenar por nome
    if @songs.respond_to?(:order)
      @songs = @songs.order(:name)
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
    @event = Event.new(event_params.except(:artist_set_id, :artist_set_ids))

    respond_to do |format|
      if @event.save
        set_ids = params[:event][:artist_set_ids].reject(&:blank?) if params[:event][:artist_set_ids]

        if set_ids.present?
          set_ids.each do |set_id|
            EventSet.create(event_id: @event.id, artist_set_id: set_id)
          end
        end

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
        @event.create_event_sets! if @event.respond_to?(:create_event_sets!)

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

  def set_event
    @event = Event.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: "Evento não encontrado."
  end

  def event_params
    params.require(:event).permit(:event_date, :description, :artist_id)
  end
end