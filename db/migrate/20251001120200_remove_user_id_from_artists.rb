class RemoveUserIdFromArtists < ActiveRecord::Migration[8.0]
  def change
    remove_reference :artists, :user, foreign_key: true
  end
end