require 'rails_helper'

RSpec.describe Job, type: :model do

  it 'has a valid Factory' do
    expect(build(:job)).to be_valid
  end

  it 'has a valid Factory with a copy block' do
    expect(build(:job_with_copy_block)).to be_valid
  end

  it 'has a valid Factory with a role' do
    expect(build(:job_with_role)).to be_valid
  end

  it{
    should belong_to(:organization)
  }
end
