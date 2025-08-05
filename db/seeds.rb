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

  
# Event.create!(event_date: "2025-01-01", locale: "Evento Bandaoke TESTE", description: "Evento TESTE Rock Flowerz - brinque aqui!")
# Event.create!(event_date: "2025-05-29", locale: "Gaz Burning", description: "Rock Flowerz no Gaz - Quinta dia 29/Mai")


# EventSongQueue.destroy_all
# Song.destroy_all
# Song.create!( name: "0utra Musica (nao achei na lista)", artist: "Outra Qualquer", tags: "rock; internacional", lyrics: " Nao Achei a Musica na Lista mas quero entrar na Fila para Cantar! :)  ")

# Event.create!(event_date: "2025-06-12", locale: "Gaz Burning", description: "Rock Flowerz - Namorados - Quinta - 12/jun")
# Event.create!(event_date: "2025-06-22", locale: "Gaz Burning", description: "Burning House Flowerz - Domingo - 22/jun")
# Update all songs with blank name to 'Black'
# Song.where(name: [nil, ""]).update_all(name: "Black")