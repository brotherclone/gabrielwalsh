require 'rails_helper'

RSpec.describe Saying, type: :model do

  it 'has a valid Factory' do
    expect(build(:saying)).to be_valid
  end

end
