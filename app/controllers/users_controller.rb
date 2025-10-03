class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to choose_artists_path, notice: "Cadastro realizado."
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email_address, :password, :password_confirmation)
  end
end