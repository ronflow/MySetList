Rails.application.routes.draw do
  resources :artist_set_songs
  resources :artist_sets
  resources :artists
  resources :events
  get "events/index"
  get "songs/index"
  get "welcome/index"

  resources :users, only: [:new, :create, :show]
  resources :passwords, param: :token
  resource :sessions, only: [:new, :create, :destroy]
  # config/routes.rb
  get    'login',  to: 'sessions#new'
  post   'login',  to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  root "welcome#index"



  resources :events do #, only: [:show] do
    member do
      get :showpublico
    end
    resources :event_song_queues do #, only: [:index, :create, :destroy] do
      member do
        patch :hide
      end
    end
  end

  resources :songs, only: [:index] do 
    member do
      get :lyrics
    end
  end

  namespace :admin do
    resources :events do
      member do
        post 'queue/reorder', to: 'admin#reorder' # Adjust controller name if needed
      end
    end
    root to: 'admin#index'
    get 'events/:event_id/queue', to: 'admin#show_queue', as: 'event_queue'
  end

  resources :artists do
    resources :artist_sets
  end

  resources :artist_sets do
    resources :artist_set_songs
  end

  resources :artists do
    member do
      get :public_sets
    end
  end

  resources :artist_set_path

  resources :artist_sets do
    post :adicionar_musicas, on: :member
    member do
      get :public_songs
    end
  end

  resources :artist_sets do
    member do
      post :adicionar_musicas
      delete :remover_musicas
    end
  end

  
end
  

