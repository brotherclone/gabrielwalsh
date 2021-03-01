require 'rails_helper'

RSpec.describe Discipline, type: :model do

  it 'has a valid Factory' do
    expect(build(:discipline)).to be_valid
  end

end
