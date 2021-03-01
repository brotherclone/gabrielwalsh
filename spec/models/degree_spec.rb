require 'rails_helper'

RSpec.describe Degree, type: :model do

  it 'has a valid Factory' do
    expect(build(:degree)).to be_valid
  end

end
