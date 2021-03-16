FactoryBot.define do
  factory :case_study_item do
    case_study
    text_1 {copy_block}
    text_2 {copy_block}
    text_3 {copy_block}
    image_1 {visual}
    image_2 {visual}
    image_3 {visual}
    case_study_item_type {0}
  end
end
