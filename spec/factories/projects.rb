FactoryBot.define do
  factory :project do
    working_date {Faker::Date.between(from: '1997-05-23', to: '2021-01-01')}
    publish_date {Faker::Date.between(from: '1997-05-23', to: '2021-01-01')}
    title {Faker::Lorem.sentence}
    organization
    factory :project_with_copy_block do
      after(:create) do |project|
        create(:copy_block, project: project)
      end
    end
    factory :project_with_project_platform do
      after(:create) do |project|
        create(:project_platform, project: project)
      end
    end
    factory :project_with_my_role do
      after(:create) do |project|
        create(:my_role, project: project)
      end
    end
    factory :project_with_visual do
      after(:create) do |project|
        create(:visual, project: project)
      end
    end
  end
end
