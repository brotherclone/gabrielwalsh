FactoryBot.define do
  factory :project_platform do
    platform_name {Faker::Lorem.word}
    project
    description { Faker::Lorem.paragraph.to_s }
    logo { Faker::Internet.url }
  end
end
