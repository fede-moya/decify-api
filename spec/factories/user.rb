FactoryBot.define do
  factory :user do
    username { Faker::HarryPotter.character }
  end
end