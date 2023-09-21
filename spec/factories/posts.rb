FactoryBot.define do
  factory :post do
    title { 'Post Title' }
    text { 'Post Text' }
    comments_counter { 0 }
    likes_counter { 0 }
    author { association :user }
  end
end
