FactoryBot.define do
  factory :case_study do
    project
    key_visual {visual}
    description {copy_block}
    factory :case_study_with_case_study_items do
      after(:create) do |case_study|
        create(:case_study_item, case_study: case_study)
      end
    end
  end
end
