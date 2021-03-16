require 'rails_helper'

RSpec.describe Icon, type: :model do

  it 'has a valid Factory' do
    expect(build(:icon)).to be_valid
  end

  it{
    should belong_to(:organization)
    should belong_to(:project_platform)
    should belong_to(:organization)
    should belong_to(:my_role)
  }
end
