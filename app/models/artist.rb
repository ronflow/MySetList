class Artist < ApplicationRecord
    belongs_to :user
    has_many :artist_sets, dependent: :destroy
    has_many :events, dependent: :destroy
    has_one_attached :logo
      
    validates :name, presence: true
    validates :link1, format: { with: URI::regexp(%w[http https]), message: "deve ser uma URL válida" }, allow_blank: true
    validates :link2, format: { with: URI::regexp(%w[http https]), message: "deve ser uma URL válida" }, allow_blank: true
end
