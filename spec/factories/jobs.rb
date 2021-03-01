FactoryBot.define do
  factory :job do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    start_date { Faker::Date.backward(days: 1000)}
    end_date { Faker::Date.backward(days: 300) }
    organization
    skill
  end
end
