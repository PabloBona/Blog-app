# spec/models/comment_spec.rb

require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'validations' do
    it { should belong_to(:user) }
    it { should belong_to(:post) }
  end

  describe 'callbacks' do
    it 'should update the comments counter of the associated post' do
      user = create(:user)
      post = create(:post, author: user)
      create(:comment, user:, post:)
      post.reload
      expect(post.comments_counter).to eq(1)
    end
  end
end
