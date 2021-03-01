FactoryBot.define do
  factory :served_role do
    name { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    icon { Faker::Appliance.brand }
    project
    skill
  end
end
