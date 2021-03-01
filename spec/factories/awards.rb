FactoryBot.define do
  factory :award do
    name { Faker::Lorem.sentence }
    organization
  end
end
