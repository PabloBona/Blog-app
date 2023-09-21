FactoryBot.define do
  factory :like do
    user { association :user }
    post { association :post }
  end
end
