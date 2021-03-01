FactoryBot.define do
  factory :portfolio_image do
    description { Faker::Lorem.paragraph }
    image_url { Faker::Lorem.sentence }
    project
  end
end
