require 'rails_helper'

RSpec.describe Award, type: :model do

  it 'has a valid Factory' do
    expect(build(:award)).to be_valid
  end

end
