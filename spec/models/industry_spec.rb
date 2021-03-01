require 'rails_helper'

RSpec.describe Industry, type: :model do

  it 'has a valid Factory' do
    expect(build(:industry)).to be_valid
  end

end
