FactoryBot.define do
  factory :organization do
    name { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
    industry
    organization_type { 0 }
  end
end
