FactoryBot.define do
  factory :sector do
    name { Faker::Lorem.word }
    description { Faker::Lorem.paragraph.to_s}
    icon { '3423' }
    factory :organization_with_organization_through_organization_category do
      after(:create) do |sector|
        organization = create(:organization)
        create(:organization_category, organization: organization, sector:sector)
      end
    end
  end
end
