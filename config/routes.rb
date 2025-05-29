Rails.application.routes.draw do
  resources :events
  get "events/index"
  get "songs/index"
  get "welcome/index"

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
      collection do
        post :reorder
      end
    end
  end

  resources :songs, only: [:index] do 
    member do
      get :lyrics
    end
  end

  namespace :admin do
    root to: 'admin#index'
    get 'events/:event_id/queue', to: 'admin#show_queue', as: 'event_queue'
  end
end
  

