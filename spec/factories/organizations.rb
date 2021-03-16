FactoryBot.define do
  factory :organization do
    name { Faker::Name.unique.name }
    location {Faker::Address.city + ", " + Faker::Address.country}
  end
end
