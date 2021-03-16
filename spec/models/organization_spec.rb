require 'rails_helper'

RSpec.describe Organization, type: :model do

  it 'has a valid Factory' do
    expect(build(:organization)).to be_valid
  end

  it 'has a valid Factory with a sector' do
    expect(build(:organization_with_sector)).to be_valid
  end

  it 'has a valid Factory with a job' do
    expect(build(:organization_with_job)).to be_valid
  end

  it 'has a valid Factory with an icon' do
    expect(build(:organization_with_icon)).to be_valid
  end

  it 'has a valid Factory with a copy block' do
    expect(build(:organization_with_copy_block)).to be_valid
  end

  it{
    should have_many(:sectors)
    should have_many(:jobs)
    should have_many(:projects)
    should have_one(:icon)
    should have_one(:copy_block)
  }

end
