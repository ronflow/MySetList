# config/routes.rb
Rails.application.routes.draw do
  
  # =========================
  # ROTAS BÁSICAS DO SISTEMA
  # =========================
  
  # Página inicial
  root "welcome#index"
  
  # Rotas de saúde e páginas estáticas
  get "up" => "rails/health#show", as: :rails_health_check
  get "events/index"
  get "songs/index"
  get "welcome/index"
  
  # =========================
  # AUTENTICAÇÃO E USUÁRIOS
  # =========================
  
  resources :users, only: [:new, :create, :show]
  resources :passwords, param: :token
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
    end
    resources :event_sets
  end
  
  # =========================
  # MÚSICAS
  # =========================
  
  resources :songs, only: [:index] do 
    member do
      get :lyrics
    end
  end
  
  # =========================
  # ARTISTS E SETS (PRINCIPAL)
  # =========================
  
  resources :artists do
    member do
      get :public_sets
    end
    resources :artist_sets do
      member do
        get :show_sets_pub
        post :adicionar_musicas
        delete :remover_musicas
        get :public_songs
      end
    end
  end
  
  # =========================
  # RECURSOS INDEPENDENTES
  # =========================
  
  resources :artist_sets do
    resources :artist_set_songs
  end
  
  resources :artist_set_songs
  resources :event_sets  # Movido para cá, removendo a duplicata
  
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
  
end