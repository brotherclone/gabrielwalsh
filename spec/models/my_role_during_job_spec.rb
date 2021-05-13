require 'rails_helper'

RSpec.describe MyRoleDuringJob, type: :model do

  it 'has a valid Factory' do
    expect(build(:my_role_during_job)).to be_valid
  end

  it 'belongs to my role'do
    should belong_to(:my_role)
  end

  it 'belongs to a job' do
    should belong_to(:job)
  end

end
