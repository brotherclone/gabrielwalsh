FactoryBot.define do
  factory :project do
    title { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
    project_date { Faker::Date.backward(days: 1000) }
    organization
  end
end
