# app/controllers/welcome_controller.rb
class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    # Definir o artist baseado no parâmetro ou usuário logado
    if params[:artist_name].present?
      @artist = Artist.find_by(name: params[:artist_name])
      # Se o parâmetro existe mas o artist não foi encontrado, usar 'Rock Flowerz'
      @artist = Artist.where("name ILIKE ?", "%Flowerz%").first if @artist.nil?
    elsif params[:artist_id].present?
      # Permitir busca por ID também
      @artist = Artist.find_by(id: params[:artist_id])
      @artist = Artist.where("name ILIKE ?", "%Flowerz%").first if @artist.nil?
    elsif current_user
      @artist = current_user.artists.first
    else
      # Se não há usuário logado, usar artist padrão
      @artist = Artist.where("name ILIKE ?", "%Flowerz%").first
    end

    # Filtrar eventos - VERSÃO MAIS DEFENSIVA
    if @artist
      # Buscar events do artist, incluindo eventos futuros e de hoje
      @events = @artist.events.where("event_date >= ?", Date.current).order(:event_date)
      
      # Se não houver events futuros, mostrar todos os events do artist
      if @events.empty?
        @events = @artist.events.order(:event_date)
      end
    else
      # Se não há artist, mostrar todos os events
      @events = Event.where("event_date >= ?", Date.current).order(:event_date)
      
      # Se não houver events futuros, mostrar todos
      if @events.empty?
        @events = Event.all.order(:event_date)
      end
    end
  end
end