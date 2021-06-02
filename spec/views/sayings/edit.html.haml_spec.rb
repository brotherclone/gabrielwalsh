require 'rails_helper'

RSpec.describe "sayings/edit", type: :view do
  before(:each) do
    @saying = assign(:saying, Saying.create!())
  end

  it "renders the edit saying form" do
    render

    assert_select "form[action=?][method=?]", saying_path(@saying), "post" do
    end
  end
end
