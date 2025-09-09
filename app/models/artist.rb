# app/models/artist.rb
class Artist < ApplicationRecord
  belongs_to :user

  # Active Storage para logo
  has_one_attached :logo
  has_one_attached :video   # ✅ NOVO: Vídeo do artista
  
  # Relacionamentos com songs
  has_many :artist_songs, dependent: :destroy
  has_many :songs, through: :artist_songs
  
  # Relacionamentos com sets
  has_many :artist_sets, dependent: :destroy
  
  # Relacionamentos com events
  has_many :events, dependent: :destroy

  # Validações
  validates :name, presence: true

  # Campos de redes sociais
  def link1_text
    super.presence || "WhatsApp"
  end
  
  def link2_text
    super.presence || "Instagram"
  end
  
  def social_message
    super.presence || "Acompanhe #{name} nas redes sociais!"
  end
  
  private
  
  def generate_unique_name
    base_name = self.set_list_name
    counter = 2
    new_name = "#{base_name} #{counter}"
    
    while self.artist.artist_sets.exists?(set_list_name: new_name)
      counter += 1
      new_name = "#{base_name} #{counter}"
    end
    
    new_name
  end
end