class WelcomeController < ApplicationController
  def index
    @events = Event.order(:event_date)
  end
end
