FactoryBot.define do
  factory :case_study do
    project
    factory :case_study_with_case_study_items do
      after(:create) do |case_study|
        create(:case_study_item, case_study: case_study)
      end
    end
    factory :case_study_with_visual do
      after(:create) do |case_study|
        create(:visual, case_study: case_study)
      end
    end
    factory :case_study_with_copy_block do
      after(:create) do |case_study|
        create(:copy_block, case_study: case_study)
      end
    end
  end
end
