require 'rails_helper'

RSpec.describe "portfolio_image_call_outs/edit", type: :view do
  before(:each) do
    @portfolio_image_call_out = assign(:portfolio_image_call_out, PortfolioImageCallOut.create!())
  end

  it "renders the edit portfolio_image_call_out form" do
    render

    assert_select "form[action=?][method=?]", portfolio_image_call_out_path(@portfolio_image_call_out), "post" do
    end
  end
end
