# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#index'

  get '/users', to: 'users#index', as: 'users'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/posts', to: 'users#posts', as: 'user_posts'
  get '/users/:id/posts/:post_id', to: 'posts#show', as: 'user_post'

end
