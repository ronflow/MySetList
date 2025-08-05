class User < ApplicationRecord

    has_secure_password
    has_many :artists, dependent: :destroy

    validates :email_address, presence: true, uniqueness: true
    validates :name, presence: true

    def admin?
        admin == true
    end

end
