require 'rails_helper'

RSpec.describe "portfolio_image_call_outs/new", type: :view do
  before(:each) do
    assign(:portfolio_image_call_out, PortfolioImageCallOut.new())
  end

  it "renders new portfolio_image_call_out form" do
    render

    assert_select "form[action=?][method=?]", portfolio_image_call_outs_path, "post" do
    end
  end
end
