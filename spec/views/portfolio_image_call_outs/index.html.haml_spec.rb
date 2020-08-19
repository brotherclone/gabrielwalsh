require 'rails_helper'

RSpec.describe "portfolio_image_call_outs/index", type: :view do
  before(:each) do
    assign(:portfolio_image_call_outs, [
      PortfolioImageCallOut.create!(),
      PortfolioImageCallOut.create!()
    ])
  end

  # it "renders a list of portfolio_image_call_outs" do
  #   render
  # end
end
