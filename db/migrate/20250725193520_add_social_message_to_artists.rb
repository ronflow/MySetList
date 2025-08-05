class AddSocialMessageToArtists < ActiveRecord::Migration[8.0]
  def change
    add_column :artists, :social_message, :text
  end
end
