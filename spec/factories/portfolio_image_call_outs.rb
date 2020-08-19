FactoryBot.define do

  factory :portfolio_image_call_out do
    x { 0 }
    y { 0 }
    title { Faker::Lorem.word }
    caption { Faker::Lorem.paragraph }
    portfolio_image
  end

end
