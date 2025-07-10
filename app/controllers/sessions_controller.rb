class SessionsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    # renderiza o formulário de login
    @user = User.new  
  end

  def create
    user = User.find_by(email_address: params[:email_address])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_root_path, notice: "Login realizado com sucesso!"
    else
      flash.now[:alert] = "E-mail ou senha inválidos."
      render :new, status: :unprocessable_entity
    end
  end

  def new_registration
    @user = User.new
  end

  def create_registration
    @user = User.new(user_params)
    if @user.save
      redirect_to sessions_path, notice: "Conta criada com sucesso! Faça login."
    else
      render :new_registration, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email_address, :password, :password_confirmation)
  end
end