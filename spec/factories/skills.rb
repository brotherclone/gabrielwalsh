FactoryBot.define do
  factory :skill do
    name { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
    discipline
  end
end
