FactoryBot.define do
  factory :skill do
    my_role
    name {Faker::Lorem.sentence}
  end
end
