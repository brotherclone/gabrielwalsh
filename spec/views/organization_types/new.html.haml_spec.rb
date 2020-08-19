require 'rails_helper'

RSpec.describe "organization_types/new", type: :view do
  before(:each) do
    assign(:organization_type, OrganizationType.new())
  end

  it "renders new organization_type form" do
    render

    assert_select "form[action=?][method=?]", organization_types_path, "post" do
    end
  end
end
