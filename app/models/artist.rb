# app/models/artist.rb
class Artist < ApplicationRecord
  belongs_to :user

  # Active Storage para logo
  has_one_attached :logo
  
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
end