require 'rails_helper'

RSpec.describe "served_roles/show", type: :view do
  before(:each) do
    @served_role = assign(:served_role, ServedRole.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
