require 'rails_helper'

RSpec.describe "organization_types/show", type: :view do
  before(:each) do
    @organization_type = assign(:organization_type, OrganizationType.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
