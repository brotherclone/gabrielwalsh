FactoryBot.define do
  factory :organization do
    name { Faker::Lorem.word }
    location {Faker::Address.city + ", " + Faker::Address.country}
    description { Faker::Lorem.paragraph.to_s}
    logo { Faker::Internet.url }
    factory :organization_with_sector_through_organization_category do
      after(:create) do |organization|
        sector = create(:sector)
        create(:organization_category, organization: organization, sector:sector)
      end
    end
    factory :organization_with_job do
      after(:create) do |organization|
        create(:job, organization: organization)
      end
    end
    factory :organization_with_project do
      after(:create) do |organization|
        create(:project, organization: organization)
      end
    end
  end
end
