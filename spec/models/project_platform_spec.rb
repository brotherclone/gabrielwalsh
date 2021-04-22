require 'rails_helper'

RSpec.describe ProjectPlatform, type: :model do

  it 'has a valid Factory' do
    expect(build(:project_platform)).to be_valid
  end

  it 'belongs to a project' do
    should belong_to(:project)
  end

end
