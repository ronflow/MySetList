class WelcomeController < ApplicationController

  skip_before_action :authenticate_user!

  def index

    @events = Event.where("event_date >= ?", Date.yesterday).order(:event_date)
  
  end
end
