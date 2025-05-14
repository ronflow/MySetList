class EventsController < ApplicationController
  def index
  end
  def show
    @event = Event.find(params[:id])
    @songs = Song.all

    if params[:query].present?
      @songs = @songs.where("name ILIKE ? OR artist ILIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
    end
    
  end
end
