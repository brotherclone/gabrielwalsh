FactoryBot.define do
  factory :case_study_item do
    case_study
    factory :case_study_item_with_visual do
      after(:create) do |case_study_item|
        create(:visual, case_study_item: case_study_item)
      end
    end
    factory :case_study_item_with_copy_block do
      after(:create) do |case_study_item|
        create(:copy_block, case_study_item: case_study_item)
      end
    end
  end
end
