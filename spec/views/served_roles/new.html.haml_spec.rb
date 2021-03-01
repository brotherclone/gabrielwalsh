require 'rails_helper'

RSpec.describe "served_roles/new", type: :view do
  before(:each) do
    assign(:served_role, ServedRole.new())
  end

  it "renders new served_role form" do
    render

    assert_select "form[action=?][method=?]", served_roles_path, "post" do
    end
  end
end
