FactoryBot.define do
  factory :sector do
    name { Faker::Name.unique.name }
    organization
  end
end
