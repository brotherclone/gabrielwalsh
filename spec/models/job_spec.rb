require 'rails_helper'

RSpec.describe Job, type: :model do

  it 'has a valid Factory' do
    expect(build(:job)).to be_valid
  end

  it 'has many roles through my role during a job' do
    should have_many(:my_role_during_jobs)
    should have_many(:my_roles).through(:my_role_during_jobs)
  end

  it 'belongs to an organization' do
    should belong_to(:organization)
  end
end
