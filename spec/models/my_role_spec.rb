require 'rails_helper'

RSpec.describe MyRole, type: :model do

  it 'has a valid Factory' do
    expect(build(:my_role)).to be_valid
  end

  it 'has a valid Factory with an icon' do
    expect(build(:my_role_with_icon)).to be_valid
  end

  it 'has a valid Factory with a skill' do
    expect(build(:my_role_with_skill)).to be_valid
  end

  it{
    should belong_to(:job)
    should belong_to(:project)
  }
end
