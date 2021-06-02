FactoryBot.define do
  factory :saying do
    text { Faker::Lorem.paragraph.to_s }
  end
end
