# config/routes.rb
Rails.application.routes.draw do
  # =========================
  # PÁGINA INICIAL
  # =========================
  root "welcome#index"
  
  # =========================
  # ROTAS DE SISTEMA
  # =========================
  # Health check do Rails 7+ para monitoramento de aplicação
  get "up" => "rails/health#show", as: :rails_health_check
  
  # Página de boas-vindas (rota direta para desenvolvimento)
  get "welcome/index"
  
  # =========================
  # AUTENTICAÇÃO E USUÁRIOS
  # =========================
  # Gerenciamento de usuários (registro e perfil)
  resources :users, only: [:new, :create, :show]
  
  # Reset de senhas com token
  resources :passwords, only: [:new, :create, :edit, :update], param: :token
  
  # Sessões de login/logout (singular porque é um recurso único por usuário)
  resource :sessions, only: [:new, :create, :destroy]
  
  # Aliases amigáveis para autenticação
  get    'login',  to: 'sessions#new'     # Formulário de login
  post   'login',  to: 'sessions#create'  # Processar login
  delete 'logout', to: 'sessions#destroy' # Fazer logout
  
  # =========================
  # EVENTOS (CORE DO SISTEMA)
  # =========================
  resources :events do
    member do
      # Visualização pública do evento (sem autenticação)
      get :showpublico
    end
    
    # Fila de músicas do evento (event_song_queues)
    resources :event_song_queues do
      member do
        # Ocultar música específica da fila
        patch :hide
      end
      collection do
        # Reordenar toda a fila de músicas
        post :reorder
      end
    end
    
    # Sets/grupos de músicas do evento
    resources :event_sets
  end
  
  # =========================
  # MÚSICAS (SONGS) - CATÁLOGO GERAL
  # =========================
  resources :songs do
    member do
      # Visualizar letra de música específica
      get :lyrics
    end
    
    collection do
      # Fluxo completo de importação CSV
      get :import_csv        # Formulário de upload do CSV
      post :process_csv      # Processar arquivo e mostrar preview
      get :import_line       # Importar linha por linha (wizard)
      post :import_line_action # Ação para linha atual (import/skip/update)
      post :cancel_import    # Cancelar processo de importação
    end
    
    # ⚠️ LEGACY: Artists por song (semântica questionável, mas mantida)
    resources :artists, only: [:index, :show]
  end
  
  # =========================
  # RELACIONAMENTO ARTIST-SONG (PIVOT)
  # =========================
  # Tabela de junção entre artists e songs com dados específicos
  resources :artist_songs, only: [:index, :show, :edit, :update] do
    member do
      # Gerenciamento de letras específicas por artist-song
      get :lyrics           # Visualizar letra da relação artist-song
      get :edit_lyrics      # Formulário para editar letra
      patch :update_lyrics  # Salvar alterações na letra
    end
  end
  
  # =========================
  # ARTISTS E SETS (FUNCIONALIDADE PRINCIPAL)
  # =========================
  resources :artists do
    # NOTA: Relacionamento direto artist->songs removido
    # Agora usa artist_songs (many-to-many) para maior flexibilidade
    
    # Sets/repertórios do artista
    resources :artist_sets do
      member do
        # === MODO BASE (App interno) ===
        get :show_sets_pub       # Visualização do set para inserção
        post :adicionar_musicas  # Adicionar músicas existentes ao set
        delete :remover_musicas  # Remover músicas do set
        
        # === MODO WEB (MusicBrainz integration) ===
        get :show_set_web_pub    # Visualização web para busca externa
        post :buscar_musicbrainz # Buscar músicas no MusicBrainz
        post :adicionar_musicas_web # Adicionar músicas do MusicBrainz
      end
      
      # Músicas específicas do set (artist_set_songs)
      resources :artist_set_songs, except: [:show, :edit]
    end
  end
  
  # =========================
  # ADMIN - ÁREA ADMINISTRATIVA
  # =========================
  namespace :admin do
    # Página principal do admin
    root to: 'admin#index'
    
    # === ROTAS DIRETAS PARA AdminController ===
    # Estas rotas apontam diretamente para admin/admin_controller.rb
    get 'show_queue/:event_id', to: 'admin#show_queue', as: 'show_queue'
    post 'save_queue_order/:event_id', to: 'admin#save_queue_order', as: 'save_queue_order'
    patch 'update_queue_order/:event_id', to: 'admin#update_queue_order', as: 'update_queue_order'
    post 'reorder/:event_id', to: 'admin#reorder', as: 'reorder'
    
    # === GERAÇÃO DE PDFs (AdminController) ===
    get 'imprimir_setlist/:event_id', to: 'admin#imprimir_setlist', as: 'imprimir_setlist'
    get 'preview_pdf/:event_id', to: 'admin#preview_pdf', as: 'preview_pdf'
    get 'download_pdf/:event_id', to: 'admin#download_pdf', as: 'download_pdf'
    get 'imprimir_song_lyrics/:event_id', to: 'admin#imprimir_song_lyrics', as: 'imprimir_song_lyrics'
    get 'preview_lyrics_pdf/:event_id', to: 'admin#preview_lyrics_pdf', as: 'preview_lyrics_pdf'
    get 'download_lyrics_pdf/:event_id', to: 'admin#download_lyrics_pdf', as: 'download_lyrics_pdf'
    get 'preview_lyrics_pdf_inline/:event_id', to: 'admin#preview_lyrics_pdf_inline', as: 'preview_lyrics_pdf_inline'
    
    # === ROTAS LEGACY (compatibilidade) ===
    get 'events/:event_id/queue', to: 'admin#show_queue', as: 'event_queue'
  end
  
  # =========================
  # ROTAS DE DESENVOLVIMENTO
  # =========================
  # Rotas auxiliares apenas em ambiente de desenvolvimento
  if Rails.env.development?
    get "events/index"  # Lista rápida de eventos para debug
    get "songs/index"   # Lista rápida de músicas para debug
  end
end