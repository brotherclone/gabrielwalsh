FactoryBot.define do
  factory :discipline do
    name { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
    icon { Faker::LoremFlickr.image }
  end
end
