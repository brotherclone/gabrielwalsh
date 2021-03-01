FactoryBot.define do
  factory :degree do
    name { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    organization
  end
end
