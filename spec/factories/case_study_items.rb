FactoryBot.define do
  factory :case_study_item do
    case_study
    case_study_type { 1 }
    head_line { Faker::Lorem.word }
    sub_head { Faker::Lorem.paragraph.to_s }
    text_1 { Faker::Lorem.paragraph.to_s }
    text_2 { Faker::Lorem.paragraph.to_s }
    text_3 { Faker::Lorem.paragraph.to_s }
    image_1 { Faker::Internet.url }
    image_2 { Faker::Internet.url }
    image_3 { Faker::Internet.url }
  end
end
