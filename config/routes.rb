# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :users, only: [:new, :create]
  # Defines the root path route ("/")
  # Def root "users#index"
  root 'users#index'
  # Def users :id route http://127.0.0.1:3000/users/1
  get '/users/:id', to: 'users#show', as: 'user'
  # Def users :id/posts route
  get '/users/:id/posts', to: 'users#posts', as: 'user_posts'
  # Def users :id/posts/post:id  route
  get '/users/:id/posts/:post_id', to: 'posts#show', as: 'user_post'

end
