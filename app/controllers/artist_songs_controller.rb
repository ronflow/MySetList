class ArtistSongsController < ApplicationController
  # ====================================================================
  # CALLBACKS E FILTROS
  # ====================================================================
  
  # Define quais ações precisam carregar o artist_song
  before_action :set_artist_song, only: [:show, :edit, :update, :destroy, :edit_lyrics, :update_lyrics, :edit_media, :update_media]
  
  # Define quais ações precisam autenticação (lyrics é pública)
  skip_before_action :authenticate_user!, only: [:lyrics]
  
  # Define quais ações precisam verificar propriedade
  before_action :check_owner, only: [:edit, :update, :destroy, :edit_lyrics, :update_lyrics, :edit_media, :update_media]

  # ====================================================================
  # AÇÕES PADRÃO DO CRUD
  # ====================================================================

  # GET /artist_songs
  # Lista todas as músicas do artista (raramente usado)
  def index
    @artist_songs = ArtistSong.includes(:song, :artist).all
  end

  # GET /artist_songs/1
  # Exibe uma música específica do repertório
  def show
    # @artist_song já carregado pelo before_action
    @artist = @artist_song.artist
    @song = @artist_song.song
  end

  # GET /artist_songs/new
  # Formulário para criar nova música no repertório
  def new
    @artist_song = ArtistSong.new
  end

  # GET /artist_songs/1/edit
  # Formulário para editar música do repertório
  def edit
    # @artist_song já carregado pelo before_action
  end

  # POST /artist_songs
  # Criar nova música no repertório
  def create
    @artist_song = ArtistSong.new(artist_song_params)

    respond_to do |format|
      if @artist_song.save
        format.html { redirect_to @artist_song, notice: "Música adicionada ao repertório com sucesso." }
        format.json { render :show, status: :created, location: @artist_song }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artist_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artist_songs/1
  # Atualizar música do repertório
  def update
    respond_to do |format|
      if @artist_song.update(artist_song_params)
        format.html { redirect_to @artist_song, notice: "Música atualizada com sucesso." }
        format.json { render :show, status: :ok, location: @artist_song }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artist_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artist_songs/1
  # Remover música do repertório
  def destroy
    artist_name = @artist_song.artist.name
    song_name = @artist_song.song.name
    
    @artist_song.destroy!

    respond_to do |format|
      format.html { 
        redirect_to artist_path(@artist_song.artist), 
        notice: "Música '#{song_name}' removida do repertório de #{artist_name}." 
      }
      format.json { head :no_content }
    end
  end

  # ====================================================================
  # AÇÕES PARA VISUALIZAÇÃO PÚBLICA DE LETRAS
  # ====================================================================

  # GET /artist_songs/1/lyrics
  # Exibe letra da música (acesso público, sem autenticação)
  def lyrics
    @artist_song = ArtistSong.includes(:song, :artist).find(params[:id])
    @artist = @artist_song.artist
    @song = @artist_song.song
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: "Música não encontrada."
  end

  # ====================================================================
  # AÇÕES PARA EDIÇÃO DE LETRAS
  # ====================================================================

  # GET /artist_songs/1/edit_lyrics
  # Formulário para editar letra da música
  def edit_lyrics
    # Carregar dados necessários
    @artist_song = ArtistSong.includes(:song, :artist).find(params[:id])
    @artist = @artist_song.artist
    @song = @artist_song.song

    # Verificar propriedade
    unless current_user == @artist.user
      redirect_to artist_path(@artist), alert: 'Acesso negado!'
      return
    end
    
    # Encontrar set atual para navegação de retorno
    @current_set = find_current_set
    
    Rails.logger.info "📝 Editando letra de: #{@song.name} - #{@artist.name}"
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: "Música não encontrada."
  end

  # PATCH /artist_songs/1/update_lyrics
  # Atualizar letra da música
  def update_lyrics
    # Carregar dados
    @artist_song = ArtistSong.includes(:song, :artist).find(params[:id])
    @artist = @artist_song.artist

    # Verificar propriedade
    unless current_user == @artist.user
      redirect_to artist_path(@artist), alert: 'Acesso negado!'
      return
    end

    # Encontrar set para navegação
    @current_set = find_current_set

    # Limpar quebras de linha para compatibilidade entre sistemas
    cleaned_params = lyrics_params
    if cleaned_params[:letra].present?
      cleaned_params[:letra] = cleaned_params[:letra]
        .gsub(/\r\n/, "\n")  # Windows para Unix
        .gsub(/\r/, "\n")    # Mac clássico para Unix
    end
    
    # Atualizar letra
    if @artist_song.update(cleaned_params)
      Rails.logger.info "✅ Letra atualizada: #{@artist_song.song.name}"
      
      # Redirecionar de volta ao set se disponível
      if @current_set
        redirect_to show_sets_pub_artist_artist_set_path(@artist, @current_set), 
                    notice: 'Letra atualizada com sucesso!'
      else
        redirect_to artist_path(@artist), 
                    notice: 'Letra atualizada com sucesso!'
      end
    else
      Rails.logger.error "❌ Erro ao atualizar letra: #{@artist_song.errors.full_messages}"
      render :edit_lyrics, status: :unprocessable_entity
    end
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: "Música não encontrada."
  end

  # ====================================================================
  # AÇÕES PARA EDIÇÃO DE MÍDIA (DURAÇÃO, ARQUIVOS DE VÍDEO E SOM)
  # ====================================================================

  # GET /artist_songs/1/edit_media
  # Formulário para editar informações de mídia da música
  def edit_media
    # @artist_song já carregado pelo before_action
    @artist = @artist_song.artist
    @song = @artist_song.song
    
    # Log para debug
    Rails.logger.info "🎵 Editando mídia de: #{@song.name} - #{@artist.name}"
    Rails.logger.info "🔍 Duração atual: #{@artist_song.duracao}"
    Rails.logger.info "🔍 Arquivo vídeo: #{@artist_song.nome_arquivo_video}"
    Rails.logger.info "🔍 Arquivo som: #{@artist_song.nome_arquivo_som}"
  end

  # PATCH /artist_songs/1/update_media
  # Atualizar informações de mídia da música
  def update_media
    # @artist_song já carregado pelo before_action
    
    Rails.logger.info "🎵 Atualizando mídia: #{media_params.inspect}"
    
    if @artist_song.update(media_params)
      Rails.logger.info "✅ Mídia atualizada para: #{@artist_song.song.name}"
      
      # Verificar se tem set_id para retornar ao set específico
      if params[:set_id].present?
        current_set = @artist_song.artist.artist_sets.find_by(id: params[:set_id])
        if current_set
          redirect_to show_sets_pub_artist_artist_set_path(@artist_song.artist, current_set), 
                      notice: 'Informações de mídia atualizadas com sucesso!'
          return
        end
      end
      
      # Fallback: retornar para a página da música
      redirect_to @artist_song, 
                  notice: 'Informações de mídia atualizadas com sucesso!'
    else
      Rails.logger.error "❌ Erro ao atualizar mídia: #{@artist_song.errors.full_messages}"
      render :edit_media, status: :unprocessable_entity
    end
  end

  # ====================================================================
  # MÉTODOS PRIVADOS
  # ====================================================================
  
  private

  # Carrega o artist_song com associações para melhor performance
  def set_artist_song
    @artist_song = ArtistSong.includes(:song, :artist).find(params[:id])
    Rails.logger.info "🎵 ArtistSong carregado: ID #{@artist_song.id} - #{@artist_song.song.name}"
  rescue ActiveRecord::RecordNotFound
    Rails.logger.error "❌ ArtistSong não encontrado: ID #{params[:id]}"
    redirect_to root_path, alert: "Música não encontrada."
  end

  # Verifica se o usuário atual é dono do artist_song
  def check_owner
    unless current_user == @artist_song.artist.user
      Rails.logger.error "❌ Usuário sem permissão: #{current_user&.id} vs #{@artist_song.artist.user.id}"
      redirect_to root_path, alert: "Sem permissão para esta ação."
    end
  end

  # Encontra o set atual baseado nos parâmetros ou último set do artista
  def find_current_set
    # Primeiro, tentar encontrar através do parâmetro set_id
    if params[:set_id].present?
      set = @artist_song.artist.artist_sets.find_by(id: params[:set_id])
      return set if set
    end
    
    # Se não encontrar, retornar o último set criado do artista
    @artist_song.artist.artist_sets.order(created_at: :desc).first
  end

  # Parâmetros permitidos para criação/atualização completa
  def artist_song_params
    params.require(:artist_song).permit(
      :artist_id, 
      :song_id, 
      :letra,
      :duracao,
      :nome_arquivo_video,
      :nome_arquivo_som
    )
  end

  # Parâmetros específicos para atualização de letras
  def lyrics_params
    params.require(:artist_song).permit(:letra)
  end

  # Parâmetros específicos para atualização de mídia
  def media_params
    params.require(:artist_song).permit(
      :duracao, 
      :nome_arquivo_video, 
      :nome_arquivo_som
    )
  end
end