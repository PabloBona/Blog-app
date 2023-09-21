# spec/models/post_spec.rb

require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'validations' do
    it { should belong_to(:author).class_name('User').with_foreign_key(:author_id) }
    it { should have_many(:comments) }
    it { should have_many(:likes) }
    it { should validate_presence_of(:title) }
    it { should validate_length_of(:title).is_at_most(250) }
    it { should validate_numericality_of(:comments_counter).only_integer.is_greater_than_or_equal_to(0) }
    it { should validate_numericality_of(:likes_counter).only_integer.is_greater_than_or_equal_to(0) }
  end

  describe 'methods' do
    it 'should return recent comments for the post' do
      post = create(:post)
      comment1 = create(:comment, post:)
      comment2 = create(:comment, post:)
      comment3 = create(:comment, post:)
      expect(post.recent_comments).to eq([comment3, comment2, comment1])
    end
  end
end
