require 'rails_helper'

RSpec.describe Visual, type: :model do

  it 'has a valid Factory' do
    expect(build(:visual)).to be_valid
  end


end
