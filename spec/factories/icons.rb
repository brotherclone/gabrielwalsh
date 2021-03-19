FactoryBot.define do
  factory :icon do
    project_platform
    organization
    my_role
    asset_url { Faker::Internet.url(host: 'http://www.cloudinary.com', path: 'an-image-file.png')}
  end
end
