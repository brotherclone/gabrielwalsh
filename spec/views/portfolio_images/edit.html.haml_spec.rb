require 'rails_helper'

RSpec.describe "portfolio_images/edit", type: :view do
  before(:each) do
    @portfolio_image = assign(:portfolio_image, PortfolioImage.create!())
  end

  # it "renders the edit portfolio_image form" do
  #   render
  #
  #   assert_select "form[action=?][method=?]", portfolio_image_path(@portfolio_image), "post" do
  #   end
  # end
end
