# spec/models/like_spec.rb

require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'validations' do
    it { should belong_to(:user) }
    it { should belong_to(:post) }
  end

  describe 'callbacks' do
    it 'should update the likes counter of the associated post' do
      user = create(:user)
      post = create(:post, author: user)
      create(:like, user:, post:)
      post.reload
      expect(post.likes_counter).to eq(1)
    end
  end
end
