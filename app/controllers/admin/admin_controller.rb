module Admin
  class AdminController < ApplicationController
    def index
      @events = Event.all
    end

    def show_queue
      @event = Event.find(params[:event_id])
      @queues = @event.event_song_queues.order(:position)
      # @queues = @event.event_song_queues.includes(:song, :performer)
    end
  end
end