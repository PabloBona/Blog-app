require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  # We need to create a user in the database before we can test the posts
  let(:user) { FactoryBot.create(:user) }

  describe 'GET /user/:user_id/posts' do
    it 'Returns a successful HTTP response.' do
      get user_posts_path(user_id: user.id)
      expect(response).to have_http_status(:success)
    end

    it 'Renders the index view/template.' do
      get user_posts_path(user_id: user.id)
      expect(response).to render_template(:index)
    end

    it 'Displays the accurate placeholder text within the response body.' do
      get user_posts_path(user_id: user.id)
      expect(response.body).to include('List of Posts')
    end
  end

  describe 'GET /user/:user_id/posts/:id' do
    it 'Returns a successful HTTP response.' do
      post = FactoryBot.create(:post, author: user)
      get user_post_path(user_id: user.id, id: post.id)
      expect(response).to have_http_status(:success)
    end

    it 'renders the show template/view' do
      post = FactoryBot.create(:post, author: user)
      get user_post_path(user_id: user.id, id: post.id)
      expect(response).to render_template(:show)
    end

    it 'Displays the accurate placeholder text within the response body.' do
      post = FactoryBot.create(:post, author: user)
      get user_post_path(user_id: user.id, id: post.id)
      expect(response.body).to include('Post Details')
      expect(response.body).to include('Here you can see details of the post')
    end
  end
end
