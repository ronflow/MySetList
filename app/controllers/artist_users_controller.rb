class ArtistUsersController < ApplicationController
  before_action :set_artist

  def create
    user = User.find_by(email_address: params[:email])
    return redirect_back fallback_location: edit_artist_path(@artist), alert: "Usuário não encontrado." unless user
    au = @artist.artist_users.build(user: user, owner: false)
    if au.save
      redirect_to edit_artist_path(@artist), notice: "Usuário adicionado."
    else
      redirect_to edit_artist_path(@artist), alert: au.errors.full_messages.to_sentence
    end
  end

  def destroy
    au = @artist.artist_users.find(params[:id])
    if au.user_id == current_user.id
      return redirect_back fallback_location: edit_artist_path(@artist), alert: "Não pode remover a si mesmo."
    end
    if au.owner && @artist.artist_users.owners.count == 1
      return redirect_back fallback_location: edit_artist_path(@artist), alert: "Não pode remover o último owner."
    end
    au.destroy
    redirect_to edit_artist_path(@artist), notice: "Usuário removido."
  end

  def toggle_owner
    au = @artist.artist_users.find(params[:id])
    if au.owner
      if @artist.artist_users.owners.count == 1
        return redirect_back fallback_location: edit_artist_path(@artist), alert: "Não pode remover o último owner."
      end
      au.update(owner: false)
    else
      au.update(owner: true)
    end
    redirect_to edit_artist_path(@artist), notice: "Permissão atualizada."
  end

  private

  def set_artist
    @artist = current_user.artists.find(params[:artist_id])
  end
end