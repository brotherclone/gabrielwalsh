FactoryBot.define do
  factory :visual do
    case_study_item
    project
    case_study
    asset_url { Faker::Internet.url(host: 'http://www.cloudinary.com', path: 'an-image-file.jpg')}
    factory :visual_with_copy_block do
      after(:create) do |visual|
        create(:copy_block, visual: visual)
      end
    end
  end
end
