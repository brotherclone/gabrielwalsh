require 'rails_helper'

RSpec.describe Sector, type: :model do

  it 'has a valid Factory' do
    expect(build(:sector)).to be_valid
  end

end
