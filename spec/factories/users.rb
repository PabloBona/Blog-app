FactoryBot.define do
  factory :user do
    name { 'John Doe' }
    bio { 'A user bio' }
    posts_counter { 0 }
  end
end
