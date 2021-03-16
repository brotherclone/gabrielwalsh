require 'rails_helper'

RSpec.describe Skill, type: :model do

  it 'has a valid Factory' do
    expect(build(:skill)).to be_valid
  end

  it 'has a valid Factory with a copy block' do
    expect(build(:skill_with_copy_block)).to be_valid
  end

  it{
    should belong_to(:my_role)
  }

end
