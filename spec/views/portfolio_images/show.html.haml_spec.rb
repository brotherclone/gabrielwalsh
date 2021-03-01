require 'rails_helper'

RSpec.describe "portfolio_images/show", type: :view do
  before(:each) do
    @portfolio_image = assign(:portfolio_image, PortfolioImage.create!())
  end

  # it "renders attributes in <p>" do
  #   render
  # end
end
