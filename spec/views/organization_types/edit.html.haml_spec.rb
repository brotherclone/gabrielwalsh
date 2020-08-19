require 'rails_helper'

RSpec.describe "organization_types/edit", type: :view do
  before(:each) do
    @organization_type = assign(:organization_type, OrganizationType.create!())
  end

  it "renders the edit organization_type form" do
    render

    assert_select "form[action=?][method=?]", organization_type_path(@organization_type), "post" do
    end
  end
end
