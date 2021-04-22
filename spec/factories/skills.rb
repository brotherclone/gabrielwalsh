FactoryBot.define do
  factory :skill do
    my_role
    name {Faker::Lorem.sentence}
    description {Faker::Lorem.paragraph.to_s}
    icon {'34532'}
  end
end
