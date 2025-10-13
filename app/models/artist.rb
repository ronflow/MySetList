class Artist < ApplicationRecord
  has_one_attached :logo
  has_one_attached :video

  has_many :artist_songs, dependent: :destroy
  has_many :songs, through: :artist_songs

  has_many :artist_sets, dependent: :destroy
  has_many :events, dependent: :destroy

  has_many :artist_users, dependent: :destroy
  has_many :users, through: :artist_users

  validates :name, presence: true

  def link1_text
    super.presence || "WhatsApp"
  end

  def link2_text
    super.presence || "Instagram"
  end

  def social_message
    super.presence || "Acompanhe #{name} nas redes sociais!"
  end

  def owners
    artist_users.owners.includes(:user).map(&:user)
  end

  def owner?(user)
    artist_users.exists?(user: user, role: 'owner')
  end

  def member?(user)
    artist_users.exists?(user: user)
  end

  def user_role(user)
    artist_users.find_by(user: user)&.role
  end
end
