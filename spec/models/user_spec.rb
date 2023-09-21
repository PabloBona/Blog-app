require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_numericality_of(:posts_counter).only_integer.is_greater_than_or_equal_to(0) }
  end

  describe 'Associations' do
    it { should have_many(:posts).with_foreign_key(:author_id) }
    it { should have_many(:comments).with_foreign_key(:user_id) }
    it { should have_many(:likes) }
  end

  describe 'methods' do
    it 'should return recent posts for the user' do
      user = create(:user)
      post1 = create(:post, author: user)
      post2 = create(:post, author: user)
      post3 = create(:post, author: user)
      expect(user.recent_posts).to eq([post3, post2, post1])
    end
  end

  it 'creates a user' do
    user = FactoryBot.create(:user)
    expect(user).to be_valid
  end
end
