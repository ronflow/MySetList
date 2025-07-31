module Admin
  class AdminController < ApplicationController

    before_action :authenticate_user!

    def index
      @events = Event.all.order(:event_date)
    
      # Definir o artist (escolha uma das opções abaixo)
      if current_user
        @artist = current_user.artists.first
      else
        @artist = Artist.where("name ILIKE ?", "%Flowerz%").first
      end

      # Filtrar eventos apenas do artist
      if @artist
        @events = @artist.events.order(:event_date)
      else
        @events = Event.none # ou Event.all se quiser mostrar todos quando não há artist
      end
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
    
    def authenticate_user!
      unless session[:user_id]
        redirect_to new_sessions_path, alert: "Faça login para continuar."
      end
    end
  end
end