class PasswordsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    # Exibe o formulário para solicitar recuperação de senha
  end

  def create
    user = User.find_by(email_address: params[:email_address])
    if user
      user.reset_password_token = SecureRandom.urlsafe_base64
      user.reset_password_sent_at = Time.current
      user.save!
      PasswordMailer.with(user: user).reset.deliver_later
    end
    flash[:notice] = "Se o e-mail estiver cadastrado, você receberá as instruções para redefinir sua senha."
    redirect_to new_password_path
  end

  def edit
    @token = params[:token]
    @user = User.find_by(reset_password_token: @token)
    unless @user && @user.reset_password_sent_at > 2.hours.ago
      redirect_to new_password_path, alert: "Token inválido ou expirado."
    end
  end

  def update
    @token = params[:token]
    @user = User.find_by(reset_password_token: @token)
    if @user && @user.reset_password_sent_at > 2.hours.ago
      if params[:password].present? && params[:password] == params[:password_confirmation]
        @user.password = params[:password]
        @user.reset_password_token = nil
        @user.reset_password_sent_at = nil
        if @user.save
          flash[:notice] = "Senha redefinida com sucesso! Faça login com sua nova senha."
          redirect_to new_session_path
        else
          flash.now[:alert] = "Erro ao redefinir a senha."
          render :edit, status: :unprocessable_entity
        end
      else
        flash.now[:alert] = "As senhas não conferem."
        render :edit, status: :unprocessable_entity
      end
    else
      redirect_to new_password_path, alert: "Token inválido ou expirado."
    end
  end
end