# require 'mini_magick'

module Admin
  class AdminController < ApplicationController
    # =========================
    # FILTROS E VALIDAÇÕES
    # =========================
    before_action :authenticate_user!
    before_action :set_event, only: [
      :show_queue, :save_queue_order, :update_queue_order, :reorder,
      :imprimir_setlist, :download_pdf, :preview_pdf,
      :imprimir_song_lyrics, :download_lyrics_pdf, :preview_lyrics_pdf, :preview_lyrics_pdf_inline
    ]

    # =========================
    # ACTIONS PRINCIPAIS
    # =========================
    
    # GET /admin
    # Página principal do admin - lista eventos do artista logado
    def index
      @events = Event.all.order(:event_date)
    
      # Definir o artist baseado no usuário logado
      # Fallback para artist "Flowerz" se não houver usuário
      if current_user
        @artist = current_user.artists.first
      else
        @artist = Artist.where("name ILIKE ?", "%Flowerz%").first
      end

      # Filtrar eventos apenas do artist selecionado
      # Mostra eventos vazios se não encontrar artist
      if @artist
        @events = @artist.events.order(:event_date)
      else
        @events = Event.none # ou Event.all se quiser mostrar todos quando não há artist
      end
    end

    # =========================
    # GERENCIAMENTO DE FILAS
    # =========================
    
    # GET /admin/show_queue/:event_id
    # Visualiza a fila de músicas do evento (visíveis e ocultas)
    def show_queue
      # Busca todas as filas do evento ordenadas por posição
      @queues = @event.event_song_queues.includes(:song, :performer).order(:position)
      
      # Separa filas visíveis das ocultas para exibição diferenciada
      @visible_queues = @queues.where(hidden: [false, nil]).order(:position)
      @hidden_queues = @queues.where(hidden: true).order(:position)
    end

    # ✅ POST /admin/save_queue_order/:event_id
    # Atualiza ordem das músicas via JavaScript (drag & drop)
    def save_queue_order
      order_ids = params[:order_ids]
      
      Rails.logger.info "🔄 save_queue_order - Event: #{@event.id}, Order: #{order_ids.inspect}"
      
      if order_ids.blank?
        render json: { status: 'error', message: 'Nenhuma ordem fornecida' }, status: :bad_request
        return
      end
      
      begin
        # Atualiza posição de cada item baseado no índice
        order_ids.each_with_index do |queue_id, index|
          queue = @event.event_song_queues.find(queue_id)
          old_position = queue.position
          new_position = index + 1
          
          queue.update!(position: new_position)
          
          Rails.logger.info "📝 Queue #{queue_id}: posição #{old_position} → #{new_position}"
        end
        
        render json: { status: 'success', message: 'Ordem atualizada com sucesso' }
      rescue ActiveRecord::RecordNotFound => e
        Rails.logger.error "❌ Queue não encontrada: #{e.message}"
        render json: { status: 'error', message: 'Item da fila não encontrado' }, status: :not_found
      rescue => e
        Rails.logger.error "❌ Erro ao salvar ordem: #{e.message}"
        render json: { status: 'error', message: e.message }, status: :unprocessable_entity
      end
    end

    # PATCH /admin/update_queue_order/:event_id
    # Atualiza ordem das músicas via formulário (método legacy)
    def update_queue_order
      order_data = params[:order]
      
      # Atualiza posição de cada item na ordem recebida
      order_data.each do |item|
        queue = @event.event_song_queues.find(item[:id])
        queue.update!(position: item[:position])
      end
      
      head :ok
    rescue => e
      Rails.logger.error "❌ Erro ao atualizar ordem: #{e.message}"
      head :unprocessable_entity
    end

    # POST /admin/reorder/:event_id
    # Método legacy de reordenação (mantido para compatibilidade)
    def reorder
      Rails.logger.info "🔄 Reorder params: #{params[:order].inspect}"

      # Atualiza posição baseada no índice + 1
      params[:order].each_with_index do |id, index|
        queue = EventSongQueue.find(id)
        queue.update(position: index + 1)
      end
      
      head :ok
    end

    # =========================
    # GERAÇÃO DE SETLIST (PDF)
    # =========================
    
    # GET /admin/imprimir_setlist/:event_id
    # View de preview/opções para impressão do setlist
    def imprimir_setlist
      # Força sincronização antes de carregar dados
      sync_queue_order_from_frontend
      
      # Carrega apenas músicas visíveis na ordem correta
      @queues = @event.event_song_queues.where(hidden: [false, nil]).order(:position)
      @songs = @queues.map(&:song)
    end

    # GET /admin/download_pdf/:event_id
    # Download direto do PDF do setlist
    def download_pdf
      # Garante sincronização antes de gerar PDF
      sync_queue_order_from_frontend
      
      # Regenera PDF com dados atualizados
      generate_setlist_pdf(@event)
      
      pdf_path = Rails.root.join('tmp', "setlist_#{@event.id}.pdf")
      
      # Envia arquivo para download com nome amigável
      send_file pdf_path, 
        filename: "setlist_#{@event.description.parameterize}.pdf",
        type: 'application/pdf',
        disposition: 'attachment'
    end

    # GET /admin/preview_pdf/:event_id
    # Preview do setlist como imagem JPG
    def preview_pdf
      sync_queue_order_from_frontend
      generate_setlist_pdf(@event)
      
      pdf_path = Rails.root.join('tmp', "setlist_#{@event.id}.pdf")
      
      # Envia PDF direto para o iframe
      send_file pdf_path, type: 'application/pdf', disposition: 'inline'
    end

    # =========================
    # GERAÇÃO DE LETRAS (PDF)
    # =========================
    
    # GET /admin/imprimir_song_lyrics/:event_id
    # View de preview/opções para impressão das letras
    def imprimir_song_lyrics
      # Sincroniza ordem antes de carregar
      sync_queue_order_from_frontend
      
      # Carrega músicas visíveis na ordem correta
      @queues = @event.event_song_queues.where(hidden: [false, nil]).order(:position)
      @songs = @queues.map(&:song)
      
      Rails.logger.info "📋 View imprimir_song_lyrics carregou #{@songs.length} músicas visíveis"
    end

    # GET /admin/download_lyrics_pdf/:event_id
    # Download direto do PDF das letras
    def download_lyrics_pdf
      # Sincroniza e regenera PDF
      sync_queue_order_from_frontend
      generate_lyrics_pdf(@event)
      
      pdf_path = Rails.root.join('tmp', "lyrics_#{@event.id}.pdf")
      
      # Download com nome amigável
      send_file pdf_path, 
        filename: "letras_#{@event.description.parameterize}.pdf",
        type: 'application/pdf',
        disposition: 'attachment'
    end

    # GET /admin/preview_lyrics_pdf/:event_id
    # Preview das letras como imagem JPG
    def preview_lyrics_pdf
      # Sincroniza e regenera PDF
      sync_queue_order_from_frontend
      generate_lyrics_pdf(@event)
      
      pdf_path = Rails.root.join('tmp', "lyrics_#{@event.id}.pdf")
      
      # Converte para imagem (pode ter múltiplas páginas)
      image_path = Rails.root.join('tmp', "lyrics_#{@event.id}.jpg")
      Rails.logger.info "🖼️ IMAGEM DE LETRAS GERADA em: #{image_path}"
      
      begin
        # Conversão PDF → JPG (primeira página ou todas mescladas)
        #image = MiniMagick::Image.open(pdf_path.to_s)
        #image.format "jpg"
        #image.write(image_path.to_s)
        
        # Exibe como imagem inline
        send_file image_path, type: 'image/jpeg', disposition: 'inline'
      rescue => e
        Rails.logger.error "❌ Erro ao gerar imagem das letras: #{e.message}"
        head :internal_server_error
      end
    end

    # GET /admin/preview_lyrics_pdf_inline/:event_id
    # Preview das letras como PDF inline no navegador
    def preview_lyrics_pdf_inline
      # Sincroniza e regenera PDF
      sync_queue_order_from_frontend
      generate_lyrics_pdf(@event)
      
      pdf_path = Rails.root.join('tmp', "lyrics_#{@event.id}.pdf")
      
      # Exibe PDF diretamente no navegador
      send_file pdf_path, 
        type: 'application/pdf', 
        disposition: 'inline',
        filename: "letras_preview_#{@event.description.parameterize}.pdf"
    end

    # =========================
    # MÉTODOS PRIVADOS
    # =========================
    private

    # Define @event baseado no parâmetro event_id
    def set_event
      @event = Event.find(params[:event_id] || params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to admin_root_path, alert: 'Evento não encontrado'
    end

    # Força sincronização da ordem antes de gerar PDFs
    def sync_queue_order_from_frontend
      return unless @event
      
      Rails.logger.info "🔄 Verificando sincronização da ordem antes de gerar PDF"
      
      # Busca ordem atual no banco de dados
      current_queues = @event.event_song_queues.where(hidden: [false, nil]).order(:position)
      
      # Logs para debug da ordem atual
      Rails.logger.info "📋 Ordem atual no banco: #{current_queues.map { |q| "#{q.id}:#{q.position}" }.join(', ')}"
      Rails.logger.info "📋 Músicas na ordem: #{current_queues.map { |q| q.song.name }.join(' → ')}"
    end

    # Gera PDF do setlist (lista de músicas) em duas colunas
    def generate_setlist_pdf(event)
      # Busca músicas visíveis na ordem atualizada
      @queues = event.event_song_queues.where(hidden: [false, nil]).order(:position)
      @songs = @queues.map(&:song)

      pdf_path = Rails.root.join('tmp', "setlist_#{event.id}.pdf")
      
      Rails.logger.info "🎵 Gerando PDF do Setlist com #{@songs.length} músicas"
      Rails.logger.info "📋 Ordem das músicas: #{@songs.map(&:name).join(' → ')}"
      
      # Remove arquivo anterior se existir
      File.delete(pdf_path) if File.exist?(pdf_path)
      
      # Gera novo PDF usando Prawn
      Prawn::Document.generate(pdf_path) do |pdf|
        # Título centralizado e destacado
        pdf.text "SETLIST - #{event.description}".upcase, 
                size: 24, style: :bold, align: :center
        pdf.move_down 30
        
        # Configuração do layout em duas colunas
        column_width = (pdf.bounds.width - 30) / 2
        left_column_x = pdf.bounds.left
        right_column_x = pdf.bounds.left + column_width + 30
        
        # Divide músicas entre as duas colunas
        songs_per_column = (@songs.length / 2.0).ceil
        left_songs = @songs[0...songs_per_column]
        right_songs = @songs[songs_per_column..-1] || []
        
        # Posição inicial do cursor
        start_y = pdf.cursor
        
        # COLUNA ESQUERDA
        pdf.bounding_box([left_column_x, start_y], width: column_width) do
          left_songs.each do |song|
            pdf.text "#{song.name}".upcase, size: 20, style: :bold
            pdf.move_down 10
          end
        end
        
        # COLUNA DIREITA
        pdf.bounding_box([right_column_x, start_y], width: column_width) do
          right_songs.each do |song|
            pdf.text "#{song.name}".upcase, size: 20, style: :bold
            pdf.move_down 10
          end
        end
      end
      
      Rails.logger.info "✅ PDF do Setlist gerado com sucesso em: #{pdf_path}"
    end

    # Gera PDF com letras das músicas (uma música por página)
    def generate_lyrics_pdf(event)
      # Busca músicas visíveis na ordem atualizada
      @queues = event.event_song_queues.where(hidden: [false, nil]).order(:position)
      @songs = @queues.map(&:song)

      pdf_path = Rails.root.join('tmp', "lyrics_#{event.id}.pdf")
      
      Rails.logger.info "🎵 Gerando PDF de Letras com #{@songs.length} músicas"
      
      # Verifica se há músicas para processar
      if @songs.empty?
        Rails.logger.error "❌ Nenhuma música visível encontrada para o evento #{event.id}"
        return
      end
      
      # Remove arquivo anterior se existir
      File.delete(pdf_path) if File.exist?(pdf_path)
      
      # Gera PDF com letras usando Prawn
      Prawn::Document.generate(pdf_path) do |pdf|
        # Título principal do documento
        pdf.text "LETRAS - #{event.description}".upcase, 
                size: 24, style: :bold, align: :center
        pdf.move_down 30
        
        # Processa cada música em uma página separada
        @songs.each_with_index do |song, idx|
          Rails.logger.info "📝 Processando música #{idx + 1}/#{@songs.length}: #{song.name}"
          
          # Nova página para cada música (exceto a primeira)
          if idx > 0
            pdf.start_new_page
          end
          
          # Nome da música como título da página
          pdf.text "#{song.name}".upcase, size: 18, style: :bold
          pdf.move_down 15
          
          # Letra da música ou mensagem de indisponibilidade
          if song.lyrics.present?
            pdf.font "Courier"
            pdf.text song.lyrics.to_s, size: 18, leading: 3
          else
            pdf.text "[Letra não disponível]", size: 12, style: :italic, color: "666666"
          end
          
          pdf.move_down 20
        end
      end
      
      Rails.logger.info "✅ PDF de Letras gerado com sucesso em: #{pdf_path}"
    end
    
    # Verifica se usuário está autenticado
    def authenticate_user!
      unless session[:user_id]
        redirect_to new_sessions_path, alert: "Faça login para continuar."
      end
    end
  end
end