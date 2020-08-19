require 'rails_helper'

RSpec.describe "portfolio_images/index", type: :view do
  before(:each) do
    assign(:portfolio_images, [
      PortfolioImage.create!(),
      PortfolioImage.create!()
    ])
  end

  # it "renders a list of portfolio_images" do
  #   render
  # end
end
