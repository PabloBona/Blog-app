require 'rails_helper'

RSpec.describe '/users/posts', type: :request do
  let(:user) do
    User.create(
      name: 'P',
      photo: 'https://unsplash.com/es/fotos/fIq0asdtET6llw',
      bio: 'Student - Developer',
      posts_counter: 0
    )
  end

  let(:first_post) do
    Post.create(
      author: user,
      title: 'First Post',
      text: 'Testing text for first post',
      likes_counter: 0,
      comments_counter: 0
    )
  end

  let(:second_post) do
    Post.create(
      author: user,
      title: 'Second Post',
      text: 'Testing text for second post',
      likes_counter: 0,
      comments_counter: 0
    )
  end

  before do
    user
    first_post
    second_post
  end

  describe 'GET /index' do
    it 'Shows the posts for a given user' do
      get "/users/#{user.id}/posts"
      expect(response).to render_template 'posts/index'
      expect(response.body).to include('First Post')
      expect(response.body).to include('Second Post')
    end
  end

  describe 'GET /show' do
    it 'Shows the post details' do
      get "/users/#{user.id}/posts/#{first_post.id}"
      expect(response).to render_template 'posts/show'
      expect(response.body).to include(user.name)
      expect(response.body).to include('Testing text for first post')
    end
  end
end
