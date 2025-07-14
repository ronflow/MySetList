class WelcomeController < ApplicationController

  skip_before_action :authenticate_user!

  def index
    @events = Event.where("event_date >= ?", Date.yesterday).order(:event_date)
    
    if current_user
      @artist = current_user.artists.first
    else
      # Se não há usuário logado, usar artist ID 11
      @artist = Artist.find_by(id: 11)
    end
  end
end
