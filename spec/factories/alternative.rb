FactoryBot.define do
  factory :alternative do
    title { Faker::HarryPotter.character }
    description { Faker::HarryPotter.quote }
    association :decision, factory: :decision
  end
end