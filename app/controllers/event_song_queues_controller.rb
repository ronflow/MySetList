class EventSongQueuesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :create]
  before_action :set_event
  before_action :set_queue, only: [:hide, :destroy]

  # GET /events/:event_id/event_song_queues
  def index
    @queues = @event.event_song_queues.includes(:song)
    @visible_queues = @queues.where(hidden: [false, nil]).order(:position, :created_at)
    @hidden_queues  = @queues.where(hidden: true).order(:position, :created_at)
  end

  # PATCH /events/:event_id/event_song_queues/:id/hide
  def hide
    if @queue.update(hidden: true)
      redirect_back fallback_location: admin_root_path, notice: "Song hidden from queue."
    else
      redirect_back fallback_location: admin_root_path, alert: "Falha ao ocultar."
    end
  end

  # POST /events/:event_id/event_song_queues
  def create
    Rails.logger.info "[QUEUE CREATE] params=#{params.to_unsafe_h.slice('event_id','song_id','performer')}"
    song_id = params[:song_id].to_s
    unless song_id.match?(/\A\d+\z/)
      return redirect_to showpublico_event_path(@event), alert: "Música inválida."
    end

    performer_name = params[:performer].to_s.strip
    performer = if performer_name.present?
                  Performer.where('LOWER(name)=?', performer_name.downcase).first_or_create(name: performer_name)
                end

    tries = 0
    begin
      EventSongQueue.transaction do
        # 🔒 Lock lógico por evento (evita corrida no cálculo do max)
        EventSongQueue.connection.execute("SELECT pg_advisory_xact_lock(#{@event.id})")

        next_position = @event.event_song_queues.maximum(:position).to_i + 1

        @queue = @event.event_song_queues.build(
          song_id: song_id,
            performer_id: performer&.id,
            position: next_position
        )

        if @queue.save
          Rails.logger.info "[QUEUE CREATE OK] event=#{@event.id} queue=#{@queue.id} position=#{next_position}"
          return redirect_to showpublico_event_path(@event),
                             notice: "Você entrou na fila na posição #{next_position}."
        else
          Rails.logger.warn "[QUEUE CREATE FAIL] errors=#{@queue.errors.full_messages}"
          return redirect_to showpublico_event_path(@event),
                             alert: "Erro: #{@queue.errors.full_messages.to_sentence}"
        end
      end
    rescue ActiveRecord::RecordNotUnique
      tries += 1
      Rails.logger.warn "[QUEUE CREATE RETRY] tentativa=#{tries} conflito posição event=#{@event.id}"
      retry if tries < 3
      redirect_to showpublico_event_path(@event), alert: "Concorrência alta. Tente novamente."
    rescue => e
      Rails.logger.error "[QUEUE CREATE EXCEPTION] #{e.class}: #{e.message}"
      redirect_to showpublico_event_path(@event), alert: "Falha ao entrar na fila."
    end
  end

  # DELETE /events/:event_id/event_song_queues/:id
  def destroy
    if @queue.destroy
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to admin_event_queue_path(@event), notice: 'Song removed.' }
      end
    else
      redirect_to admin_event_queue_path(@event), alert: 'Erro ao remover.'
    end
  end

  # POST /events/:event_id/event_song_queues/reorder
  def reorder
    ids = Array(params[:order])
    queues = @event.event_song_queues.where(id: ids).index_by(&:id)

    ActiveRecord::Base.transaction do
      ids.each_with_index do |id, idx|
        q = queues[id.to_i]
        next unless q && q.position != (idx + 1)
        q.update!(position: idx + 1)
      end
    end
    head :ok
  rescue => e
    Rails.logger.error "[QUEUE REORDER ERROR] #{e.class}: #{e.message}"
    head :unprocessable_entity
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  rescue ActiveRecord::RecordNotFound
    redirect_back fallback_location: root_path, alert: "Evento não encontrado."
  end

  def set_queue
    @queue = @event.event_song_queues.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_back fallback_location: admin_root_path, alert: "Item não encontrado."
  end
end