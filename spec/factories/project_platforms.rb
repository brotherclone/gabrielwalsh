FactoryBot.define do
  factory :project_platform do
    platform_name {Faker::Lorem.word}
    project
    factory :project_platform_with_copy_block do
      after(:create) do |platform|
        create(:copy_block, project_platform: platform)
      end
    end
    factory :project_platform_with_icon do
      after(:create) do |platform|
        create(:icon, project_platform: platform)
      end
    end
  end
end
