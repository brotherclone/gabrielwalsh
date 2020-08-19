require 'rails_helper'

RSpec.describe OrganizationType, type: :model do

  it 'has a valid Factory' do
    expect(build(:organization_type)).to be_valid
  end

end
