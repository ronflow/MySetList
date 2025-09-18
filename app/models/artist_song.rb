class ArtistSong < ApplicationRecord
  belongs_to :artist
  belongs_to :song
  has_many :artist_set_songs, dependent: :destroy
  has_many :artist_sets, through: :artist_set_songs

  # Validações para os novos campos
  validates :duracao, format: { 
    with: /\A\d{1,2}:\d{2}\z/, 
    message: "deve estar no formato min:seg (ex: 3:45)" 
  }, allow_blank: true

  validates :nome_arquivo_video, length: { maximum: 1000 }, allow_blank: true
  validates :nome_arquivo_som, length: { maximum: 1000 }, allow_blank: true

  # Método helper para converter duração em segundos
  def duracao_em_segundos
    return 0 if duracao.blank?
    
    minutos, segundos = duracao.split(':').map(&:to_i)
    (minutos * 60) + segundos
  end

  # Método helper para formatar duração a partir de segundos
  def self.segundos_para_duracao(total_segundos)
    return "0:00" if total_segundos.to_i <= 0
    
    minutos = total_segundos / 60
    segundos = total_segundos % 60
    "#{minutos}:#{'%02d' % segundos}"
  end

  # Scope para músicas com duração definida
  scope :com_duracao, -> { where.not(duracao: [nil, '']) }
  
  # Scope para músicas com arquivos de mídia
  scope :com_video, -> { where.not(nome_arquivo_video: [nil, '']) }
  scope :com_som, -> { where.not(nome_arquivo_som: [nil, '']) }

  after_save :propagate_letra_to_song, if: :saved_change_to_letra?

  private

  def propagate_letra_to_song
    begin
      text = letra.to_s.strip
      return if text.blank?
      return unless song.present? && song.respond_to?(:lyrics)
      # Atualiza apenas se lyrics estiver vazio/null — operação feita no nível SQL para ser atômica
      updated_count = Song.where(id: song.id).where("lyrics IS NULL OR lyrics = ''").update_all(lyrics: text)
      Rails.logger.info "➡️ Copiada letra de ArtistSong##{id} para Song##{song.id}.lyrics" if updated_count.to_i > 0
    rescue => e
      Rails.logger.warn "Falha ao propagar letra para Song##{song&.id}: #{e.message}"
      # não re-lançar para não interromper o fluxo de salvar ArtistSong
    end
  end
end