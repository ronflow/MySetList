# app/controllers/welcome_controller.rb
class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    # Definir o artist
    if params[:artist_name].present?
      @artist = Artist.find_by(name: params[:artist_name])
      # Se o parâmetro existe mas o artist não foi encontrado, usar 'Rock Flowerz'
      @artist = Artist.where("name ILIKE ?", "%Flowerz%").first if @artist.nil?
    elsif current_user
      @artist = current_user.artists.first
    else
      # Se não há usuário logado, usar artist padrão
      @artist = Artist.where("name ILIKE ?", "%Flowerz%").first
    end

    # Filtrar eventos apenas do artist selecionado
    if @artist
      @events = @artist.events.where("event_date >= ?", Date.yesterday).order(:event_date)
    else
      @events = Event.where("event_date >= ?", Date.yesterday).order(:event_date)
    end
  end
end