require 'rails_helper'

RSpec.describe Project, type: :model do

  it 'has a valid Factory' do
    expect(build(:project)).to be_valid
  end

end
