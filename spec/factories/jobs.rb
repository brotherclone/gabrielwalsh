FactoryBot.define do
  factory :job do
    organization
    factory :job_with_copy_block do
      after(:create) do |job|
        create(:copy_block, job: job)
      end
    end
    factory :job_with_role do
      after(:create) do |job|
        create(:my_role, job: job)
      end
    end
  end
end
