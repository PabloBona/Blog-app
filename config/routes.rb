Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root 'users#index'

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create, :destroy] do
      resources :comments, only: [:new, :create, :destroy] 
      resources :likes, only: [:create]
    end
  end

  get '/likes/:id/create', to: 'likes#create', as: 'increment_likes'
end
