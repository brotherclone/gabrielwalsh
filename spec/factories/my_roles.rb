FactoryBot.define do
  factory :my_role do
    role_name {Faker::Lorem.sentence}
    job
    project
    factory :my_role_with_icon do
      after(:create) do |role|
        create(:icon, my_role: role)
      end
    end
    factory :my_role_with_skill do
      after(:create) do |role|
        create(:skill, my_role: role)
      end
    end
  end
end
