FactoryBot.define do
  factory :skill do
    my_role
    name {Faker::Lorem.sentence}
    factory :skill_with_copy_block do
      after(:create) do |skill|
        create(:copy_block, skill: skill)
      end
    end
  end
end
