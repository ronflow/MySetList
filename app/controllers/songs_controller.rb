class SongsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:lyrics]
  
  def index
    @event = Event.find(params[:event_id])
    @query = params[:query]
    songs = Song.all
    songs = songs.where("name ILIKE ?", "%#{@query}%") if @query.present?
    @songs = songs.order(:name).page(params[:page]).per(5)
  end
  
  def lyrics
    @song = Song.find(params[:id])
  end
end
