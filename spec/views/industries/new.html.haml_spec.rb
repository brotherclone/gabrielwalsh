require 'rails_helper'

RSpec.describe "industries/new", type: :view do
  before(:each) do
    assign(:industry, Industry.new())
  end

  it "renders new industry form" do
    render

    assert_select "form[action=?][method=?]", industries_path, "post" do
    end
  end
end
