require 'rails_helper'

RSpec.describe Organization, type: :model do

  it 'has a valid Factory' do
    expect(build(:organization)).to be_valid
  end

end
