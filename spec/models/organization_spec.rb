require 'rails_helper'

RSpec.describe Organization, type: :model do

  it 'has a valid Factory' do
    expect(build(:organization)).to be_valid
  end

  it{
    should have_many(:sectors)
  #   should have_many(:jobs)
  #   should have_many(:projects)
  #   should have_one(:icon)
  #   should have_one(:copy_block)
  }

end
