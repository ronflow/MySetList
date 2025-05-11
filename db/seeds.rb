# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

5.times do |i|
    Song.create!(
      name: "Song#{i + 1}",
      artist: "Artist#{i + 1}",
      tags: "tag#{i + 1}",
      lyrics: "Lyrics for song #{i + 1}"
    )
  end
  
  Event.create!(event_date: "2025-05-01", locale: "Venue A", description: "Rock Night")
  Event.create!(event_date: "2025-05-02", locale: "Venue B", description: "Jazz Evening")
  
