require 'rails_helper'

RSpec.describe Skill, type: :model do

  it 'has a valid Factory' do
    expect(build(:skill)).to be_valid
  end

  it 'belongs to a role' do
    should belong_to(:my_role)
  end

end
