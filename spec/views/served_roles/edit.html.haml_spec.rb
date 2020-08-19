require 'rails_helper'

RSpec.describe "served_roles/edit", type: :view do
  before(:each) do
    @served_role = assign(:served_role, ServedRole.create!())
  end

  it "renders the edit served_role form" do
    render

    assert_select "form[action=?][method=?]", served_role_path(@served_role), "post" do
    end
  end
end
