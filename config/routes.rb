# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :users, only: [:new, :create]
  # Defines the root path route ("/")
  # root "articles#index"
  root 'users#index'

end
