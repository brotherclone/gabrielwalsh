require 'rails_helper'

RSpec.describe OrganizationCategory, type: :model do

  it 'has a valid Factory' do
    expect(build(:organization_category)).to be_valid
  end

  it 'belongs to an organization'do
    should belong_to(:organization)
  end

  it 'belongs to a sector' do
    should belong_to(:sector)
  end

end
