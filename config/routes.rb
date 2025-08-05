# config/routes.rb
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
  resource :sessions, only: [:new, :create, :destroy]
  
  # Aliases para login/logout
  get    'login',  to: 'sessions#new'
  post   'login',  to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  # =========================
  # EVENTOS
  # =========================
  resources :events do
    member do
      get :showpublico
    end
    resources :event_song_queues do
      member do
        patch :hide
      end
      collection do
        post :reorder
      end
    end
    resources :event_sets
  end
  
  # =========================
  # MÚSICAS (SONGS)
  # =========================
  resources :songs do
    member do
      get :lyrics
    end
    collection do
      get :import_csv
      post :process_csv
      get :import_line
      post :import_line_action
      post :cancel_import
    end
    # Songs por artist
    resources :artists, only: [:index, :show]
  end
  
  # =========================
  # RELACIONAMENTO ARTIST-SONG
  # =========================
  resources :artist_songs, only: [:index, :show, :edit, :update] do

    member do
      get :lyrics
    end
  end
  # =========================
  # ARTISTS E SETS (PRINCIPAL)
  # =========================
  resources :artists do
    # Songs do artist NAO TEM MAIS RELACIONAMENTO
    # resources :songs, only: [:index, :show]
    
    # Sets do artist
    resources :artist_sets do
      member do
        # Visualização e inserção via base do app
        get :show_sets_pub
        post :adicionar_musicas
        delete :remover_musicas
        
        # Visualização e inserção via web (MusicBrainz)
        get :show_set_web_pub
        post :buscar_musicbrainz
        post :adicionar_musicas_web
      end
      
      # Songs dos sets
      resources :artist_set_songs, except: [:show, :edit]
    end
  end
  
  # =========================
  # ADMIN
  # =========================
  namespace :admin do
    resources :events do
      member do
        post 'queue/reorder', to: 'admin#reorder'
      end
    end
    root to: 'admin#index'
    get 'events/:event_id/queue', to: 'admin#show_queue', as: 'event_queue'
  end
  
  # =========================
  # ROTAS DE DESENVOLVIMENTO
  # =========================
  get "events/index" if Rails.env.development?
  get "songs/index" if Rails.env.development?
end