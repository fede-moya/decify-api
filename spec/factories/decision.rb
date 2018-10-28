FactoryBot.define do
  factory :decision do
    title { Faker::GameOfThrones.character }
    description { Faker::GameOfThrones.quote }
    association :user, factory: :user
  end
end