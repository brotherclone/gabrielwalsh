FactoryBot.define do
  factory :job do
    start_date {Faker::Date.between(from: '1997-05-23', to: '2021-01-01')}
    end_date {Faker::Date.between(from: '1997-05-23', to: '2021-01-01')}
    responsibilities { Faker::Lorem.paragraph.to_s}
    accomplishments { Faker::Lorem.paragraph.to_s}
    title { Faker::Lorem.word}
    organization
    factory :job_with_role do
      after(:create) do |job|
        create(:my_role, job: job)
      end
    end
  end
end
