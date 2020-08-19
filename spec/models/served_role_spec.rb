require 'rails_helper'

RSpec.describe ServedRole, type: :model do

  it 'has a valid Factory' do
    expect(build(:served_role)).to be_valid
  end

end
