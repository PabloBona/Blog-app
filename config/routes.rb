# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#index'

  get '/users', to: 'users#index', as: 'users' # users_path
  get '/users/:id', to: 'users#show', as: 'user' # user_path
  get '/users/:id/posts', to: 'users#posts', as: 'user_posts' # user_posts_path
  get '/users/:id/posts/:post_id', to: 'posts#show', as: 'user_post' # user_post_path

end
