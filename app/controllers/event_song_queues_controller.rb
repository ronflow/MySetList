class EventSongQueuesController < ApplicationController
  
  skip_before_action :authenticate_user!, only: [:index, :create]
  before_action :set_event

  def index
    @queues = @event.event_song_queues.includes(:song)
    @visible_queues = @queues.where(hidden: [false, nil]).order(:position)
    @hidden_queues  = @queues.where(hidden: true).order(:position)
  end

  #controller do comando HIDE
  def hide
    @queue = EventSongQueue.find(params[:id])
    @queue.update(hidden: true)
    redirect_back fallback_location: admin_root_path, notice: "Song hidden from queue."
  end    

  def create
    performer = Performer.find_or_create_by(name: params[:performer].strip)
    position = @event.event_song_queues.maximum(:position).to_i + 1
    EventSongQueue.create!(
      event: @event,
      song_id: params[:song_id],
      performer_id: performer.id,
      position: position
    )
    Rails.logger.info "position: #{position}"
    redirect_to showpublico_event_path(@event), notice: "Artista e Música Incluídos na FILA"
  end
  
  def destroy
    @event = Event.find(params[:event_id])
    @queue = @event.event_song_queues.find(params[:id])
    @queue.destroy
    
    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to admin_event_queue_path(@event), notice: 'Song was successfully removed from the queue.' }
    end
  end

  def reorder
    params[:order].each_with_index do |id, index|
      queue = EventSongQueue.find(id)
      queue.update(position: index + 1)
    end
    head :ok
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end
end
