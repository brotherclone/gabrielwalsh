require 'rails_helper'

RSpec.describe "portfolio_image_call_outs/show", type: :view do
  before(:each) do
    @portfolio_image_call_out = assign(:portfolio_image_call_out, PortfolioImageCallOut.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
