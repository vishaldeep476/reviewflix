Rails.application.routes.draw do

  resources :genres
  resources :users
  root "movies#index"
  
  resources :movies do 
    resources :reviews
    resources :favorites, only: [:create, :destroy]
  end

  resource :session, only: [:create, :destroy]
  get "signin" => "sessions#new"
  get "signup" => "users#new"

  get "movies/filter/:filter" => "movies#index", as: :filtered_movies
end
