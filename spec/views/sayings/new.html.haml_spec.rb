require 'rails_helper'

RSpec.describe "sayings/new", type: :view do
  before(:each) do
    assign(:saying, Saying.new())
  end

  it "renders new saying form" do
    render

    assert_select "form[action=?][method=?]", sayings_path, "post" do
    end
  end
end
