class SongsController < ApplicationController
  def index
    @event = Event.find(params[:event_id])
    @query = params[:query]
    songs = Song.all
    songs = songs.where("name ILIKE ?", "%#{@query}%") if @query.present?
    @songs = songs.order(:name).page(params[:page]).per(5)
  end
end
