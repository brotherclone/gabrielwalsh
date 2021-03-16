require 'rails_helper'

RSpec.describe ProjectPlatform, type: :model do

  it 'has a valid Factory' do
    expect(build(:project_platform)).to be_valid
  end

  it 'has a valid Factory with a copy block' do
    expect(build(:project_platform_with_copy_block)).to be_valid
  end

  it 'has a valid Factory with an icon' do
    expect(build(:project_platform_with_icon)).to be_valid
  end

  it{
    should belong_to(:project)
  }

end
