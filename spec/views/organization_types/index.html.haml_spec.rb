require 'rails_helper'

RSpec.describe "organization_types/index", type: :view do
  before(:each) do
    assign(:organization_types, [
      OrganizationType.create!(),
      OrganizationType.create!()
    ])
  end

  it "renders a list of organization_types" do
    render
  end
end
