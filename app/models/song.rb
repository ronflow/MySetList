# app/models/song.rb
class Song < ApplicationRecord

  # =========================
  # RELACIONAMENTOS
  # =========================
  # Relacionamentos com artists
  has_many :artist_songs, dependent: :destroy
  has_many :artists, through: :artist_songs
  
  # Relacionamentos com artist_set_songs
  has_many :artist_set_songs, dependent: :destroy
  has_many :artist_sets, through: :artist_set_songs
  
  # Relacionamentos com event_song_queue
  has_many :event_song_queues, dependent: :destroy
  has_many :events, through: :event_song_queues

  # =========================
  # SCOPES
  # =========================
  scope :with_mbid, -> { where.not(mbid: [nil, '']) }
  scope :without_mbid, -> { where(mbid: [nil, '']) }
  
   # =========================
  # VALIDAÇÕES
  # =========================
  validates :name, presence: true
  validates :band, presence: true
  
  # ✅ NOVA VALIDAÇÃO: Evita duplicatas por MBID
  validates :mbid, uniqueness: { 
    allow_blank: true, 
    message: "já existe uma música com este MBID no sistema" 
  }
  
  # ✅ NOVA VALIDAÇÃO: Evita duplicatas por nome+banda quando não há MBID
  validates :name, uniqueness: { 
    scope: :band, 
    case_sensitive: false,
    conditions: -> { where(mbid: [nil, '']) },
    message: "já existe uma música com este nome e banda" 
  }
  
  # Validações para MBID e ISRC
  validates :mbid, format: { 
    with: /\A[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}\z/i,
    message: "deve ser um UUID válido"
  }, allow_blank: true
  
  validates :isrc, format: { 
    with: /\A[A-Z]{2}[A-Z0-9]{3}[0-9]{7}\z/,
    message: "deve ter formato válido (ex: USUM71703861)"
  }, allow_blank: true

  # =========================
  # MÉTODOS AUXILIARES
  # =========================
  # Método para obter a letra da música para um artista específico
  def letra_for_artist(artist)
    artist_song = artist.artist_songs.find_by(song: self)
    artist_song&.letra || self.original_lyrics || "Letra não disponível"
  end

  # Busca música por MBID ou por nome+banda
  def self.find_existing(name:, band:, mbid: nil)
    if mbid.present?
      # Prioriza busca por MBID
      found_by_mbid = find_by(mbid: mbid)
      return found_by_mbid if found_by_mbid
    end
    
    # Fallback para busca por nome+banda
    find_by(name: name, band: band)
  end
  
  # Verifica se já existe uma música com os mesmos dados
  def self.exists_with_data?(name:, band:, mbid: nil)
    if mbid.present?
      exists?(mbid: mbid) || exists?(name: name, band: band)
    else
      exists?(name: name, band: band)
    end
  end
end