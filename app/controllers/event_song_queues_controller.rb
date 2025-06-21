class EventSongQueuesController < ApplicationController
    before_action :set_event

    def index
      @queues = @event.event_song_queues.includes(:song, :performer)
    end
  
    def create
      performer = Performer.find_or_create_by(name: params[:performer].strip)
      position = @event.event_song_queues.maximum(:position).to_i + 1
      EventSongQueue.create!(
        event: @event,
        song_id: params[:song_id],
        performer: performer,
        position: position
      )
      redirect_to showpublico_event_path(@event), notice: "Artista e Música Incluídos na FILA"
    end
  
    # def destroy
    #   queue = @event.event_song_queues.find(params[:id])
    #   queue.destroy
    #   redirect_to event_event_song_queues_path(@event)
    # end

    # def destroy
    #   @queue = EventSongQueue.find(params[:id])
    #   @queue.destroy
    #   redirect_to event_event_song_queues_path(@queue.event), notice: "Song removed from the queue."
    # end

    def destroy
      @event = Event.find(params[:event_id])
      @queue = @event.event_song_queues.find(params[:id])
      @queue.destroy
      
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to admin_event_queue_path(@event), notice: 'Song was successfully removed from the queue.' }

        #format.html { redirect_to event_event_song_queues_path(@event), notice: 'Song was successfully removed from the queue.' }
      end
      #redirect_to event_event_song_queues_path(@event), notice: 'Song was successfully removed from the queue.'
    end
  
    
  
    private
  
    def set_event
      @event = Event.find(params[:event_id])
    end
end
