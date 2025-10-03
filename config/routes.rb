Rails.application.routes.draw do
  # =========================
  # PÁGINA INICIAL
  # =========================
  root "welcome#index"

  # =========================
  # ROTAS DE SISTEMA
  # =========================
  get "up" => "rails/health#show", as: :rails_health_check
  get "welcome/index"

  # =========================
  # AUTENTICAÇÃO E USUÁRIOS
  # =========================
  resources :users, only: [:new, :create, :show]
  resources :passwords, only: [:new, :create, :edit, :update], param: :token
  resource  :sessions, only: [:new, :create, :destroy]

  get    'login',  to: 'sessions#new'
  post   'login',  to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # =========================
  # EVENTOS (CORE DO SISTEMA)
  # =========================
  resources :events do
    member do
      get :showpublico
    end

    resources :event_song_queues, only: [:index, :create, :destroy] do
      member     { patch :hide }
      collection { post  :reorder }
    end

    resources :event_sets
  end

  # =========================
  # MÚSICAS (SONGS) - CATÁLOGO GERAL
  # =========================
  resources :songs do
    member do
      get :lyrics
    end

    collection do
      get  :import_csv
      post :process_csv
      get  :import_line
      post :import_line_action
      post :cancel_import
    end

    # ⚠️ LEGACY
    resources :artists, only: [:index, :show]
  end

  # =========================
  # RELACIONAMENTO ARTIST-SONG (PIVOT)
  # =========================
  resources :artist_songs, only: [:index, :show, :edit, :update] do
    member do
      get  :letra
      get  :edit_letra
      patch :update_letra
      get  :edit_musica
      patch :update_musica
    end
  end

  # =========================
  # ARTISTS E SETS
  # =========================
  get 'artists/choose', to: 'artists#choose', as: :choose_artists
  get 'dashboard',      to: 'admin/admin#index', as: :dashboard

  resources :artists do
    # Ações adicionais no artista
    member do
      get    :public_sets          # listagem pública dos sets
      delete :purge_logo           # remover logo (ActiveStorage)
      delete :purge_video          # remover vídeo (ActiveStorage)
      post   :assign_tags, to: 'artists#update', defaults: { action_type: 'assign_tags' } # atalho para action_type
    end

    resources :artist_users, only: [:create, :destroy] do
      member { patch :toggle_owner }
    end

    resources :artist_sets do
      member do
        # === MODO BASE ===
        get    :show_sets_pub
        post   :adicionar_musicas
        delete :remover_musicas

        # === MODO WEB / MusicBrainz ===
        get  :show_set_web_pub
        post :buscar_musicbrainz
        post :adicionar_musicas_web

        # Export / duplicação
        get  :generate_xml
        post :duplicate
      end

      resources :artist_set_songs, except: [:show, :edit]
    end
  end

  # =========================
  # ADMIN - ÁREA ADMINISTRATIVA
  # =========================
  namespace :admin do
    # /admin → Admin::AdminController#index
    root to: 'admin#index'

    # Operações de fila / ordem
    get  'show_queue/:event_id',        to: 'admin#show_queue',        as: 'show_queue'
    post 'save_queue_order/:event_id',  to: 'admin#save_queue_order',  as: 'save_queue_order'
    patch 'update_queue_order/:event_id', to: 'admin#update_queue_order', as: 'update_queue_order'
    post 'reorder/:event_id',           to: 'admin#reorder',           as: 'reorder'

    # PDFs / Impressões
    get 'imprimir_setlist/:event_id',        to: 'admin#imprimir_setlist',        as: 'imprimir_setlist'
    get 'preview_pdf/:event_id',             to: 'admin#preview_pdf',             as: 'preview_pdf'
    get 'download_pdf/:event_id',            to: 'admin#download_pdf',            as: 'download_pdf'
    get 'imprimir_song_lyrics/:event_id',    to: 'admin#imprimir_song_lyrics',    as: 'imprimir_song_lyrics'
    get 'preview_lyrics_pdf/:event_id',      to: 'admin#preview_lyrics_pdf',      as: 'preview_lyrics_pdf'
    get 'download_lyrics_pdf/:event_id',     to: 'admin#download_lyrics_pdf',     as: 'download_lyrics_pdf'
    get 'preview_lyrics_pdf_inline/:event_id', to: 'admin#preview_lyrics_pdf_inline', as: 'preview_lyrics_pdf_inline'

    # Legacy / alias
    get 'events/:event_id/queue', to: 'admin#show_queue', as: 'event_queue'
  end

  # Alias direto extra (caso o namespace root não seja capturado em algum cenário de cache)
  get '/admin', to: 'admin/admin#index'

  # =========================
  # FAVICON (opcional para evitar 404 em dev)
  # =========================
  get '/favicon.ico', to: redirect('/assets/favicon.ico'), status: 302

  # =========================
  # ROTAS DE DESENVOLVIMENTO
  # =========================
  if Rails.env.development?
    get "events/index"
    get "songs/index"
  end
end
