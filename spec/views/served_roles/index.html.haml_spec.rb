require 'rails_helper'

RSpec.describe "served_roles/index", type: :view do
  before(:each) do
    assign(:served_roles, [
      ServedRole.create!(),
      ServedRole.create!()
    ])
  end

  it "renders a list of served_roles" do
    render
  end
end
