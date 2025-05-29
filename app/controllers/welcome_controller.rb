class WelcomeController < ApplicationController
  def index
    # @events = Event.order(:event_date)
    @events = Event.where("event_date >= ?", Date.yesterday).order(:event_date)
    
  end
end
