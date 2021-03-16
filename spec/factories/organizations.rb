FactoryBot.define do
  factory :organization do
    name { Faker::Name.unique.name }
    location {Faker::Address.city + ", " + Faker::Address.country}
    factory :organization_with_sector do
      after(:create) do |organization|
        create(:sector, organization: organization)
      end
    end
    factory :organization_with_job do
      after(:create) do |organization|
        create(:job, organization: organization)
      end
    end
    factory :organization_with_icon do
      after(:create) do |organization|
        create(:icon, organization: organization)
      end
    end
    factory :organization_with_copy_block do
      after(:create) do |organization|
        create(:copy_block, organization: organization)
      end
    end
  end
end
