class User < ApplicationRecord
  # Usa autenticação manual com bcrypt
  has_secure_password
  # Certifique-se de ter a coluna password_digest (migration criada ou renomeada)

  # Relacionamentos (após remover user_id de artists)
  has_many :artist_users, dependent: :destroy
  has_many :artists, through: :artist_users

  # Validações
  validates :email_address, presence: true, uniqueness: true
  validates :name, presence: true

  # Admin flag (supondo coluna boolean :admin)
  def admin?
    admin == true
  end

  # Donos (ajuste se a tabela artist_users usa :owner boolean)
  def owned_artists
    artists.joins(:artist_users).where(artist_users: { owner: true })
  end

  # Todos os artistas acessíveis (pode evoluir para incluir convites etc.)
  def accessible_artists
    artists
  end
end