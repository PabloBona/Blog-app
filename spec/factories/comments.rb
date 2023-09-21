FactoryBot.define do
  factory :comment do
    text { 'Comment Text' }
    user { association :user }
    post { association :post }
  end
end
