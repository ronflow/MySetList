class WelcomeController < ApplicationController

  skip_before_action :authenticate_user!

  def index
    @events = Event.where("event_date >= ?", Date.yesterday).order(:event_date)
    
    if params[:artist_name].present?
      @artist = Artist.find_by(name: params[:artist_name])
      # Se o parâmetro existe mas o artist não foi encontrado, usar 'Rock Flowerz'
      @artist = Artist.find_by(name: 'Rock Flowerz') if @artist.nil?
    elsif current_user
      @artist = current_user.artists.first
    else
      # Se não há usuário logado, usar artist ID 11
      @artist = Artist.find_by(name: 'Rock Flowerz')
    end
  end
end
