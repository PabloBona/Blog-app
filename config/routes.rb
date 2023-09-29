Rails.application.routes.draw do
  root 'users#index'

  resources :users do
    resources :posts do
      resources :comments, only: [:new, :create]
      resources :likes, only: [:new, :create]
    end
  end
end
