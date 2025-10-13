class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Autenticação manual
  before_action :authenticate_user!

  protected

  def user_artists
    return Artist.none unless current_user
    current_user.accessible_artists
  end

  def require_artist_access(artist)
    unless artist.member?(current_user)
      redirect_to root_path, alert: "Acesso negado."
    end
  end

  def require_artist_management(artist)
    artist_user = artist.artist_users.find_by(user: current_user)
    unless artist_user&.can_manage_users?
      redirect_to artist_path(artist), alert: "Permissão insuficiente."
    end
  end

  private

  def authenticate_user!
    return if current_user
    redirect_to new_sessions_path, alert: "Faça login."
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  helper_method :current_user

  # Mantido só para compatibilidade se futuramente Devise voltar.
  def configure_permitted_parameters
    return unless respond_to?(:devise_parameter_sanitizer)
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
