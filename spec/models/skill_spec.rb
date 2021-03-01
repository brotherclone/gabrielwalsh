require 'rails_helper'

RSpec.describe Skill, type: :model do

  it 'has a valid Factory' do
    expect(build(:skill)).to be_valid
  end

end
