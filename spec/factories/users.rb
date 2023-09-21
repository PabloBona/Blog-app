FactoryBot.define do
  factory :user do
    name { 'Pablo Bonasera' }
    bio { 'A user bio' }
    posts_counter { 0 }
  end
end
