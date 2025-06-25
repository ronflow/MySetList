module Admin
  class AdminController < ApplicationController
    def index
      @events = Event.all
    end

    def show_queue
      @event = Event.find(params[:event_id])
      @queues = @event.event_song_queues.order(:position)
      @visible_queues = @queues.where(hidden: [false, nil]).order(:position)
      @hidden_queues = @queues.where(hidden: true).order(:position)
    end
    
    def reorder
      Rails.logger.info "Reorder params: #{params[:order].inspect}"

      params[:order].each_with_index do |id, index|
        queue = EventSongQueue.find(id)
        queue.update(position: index + 1)
      end
      head :ok
    end
  end
end