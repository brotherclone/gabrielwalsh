FactoryBot.define do
  factory :copy_block do
    case_study_item
    project
    organization
    job
    visual
    text {Faker::Lorem.paragraph_by_chars}
  end
end
