class AddSocialButtonsConfigToArtists < ActiveRecord::Migration[8.0]
  def change
    add_column :artists, :link1_text, :string
    add_column :artists, :link2_text, :string
  end
end
