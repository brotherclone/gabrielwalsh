require 'rails_helper'

RSpec.describe "portfolio_images/new", type: :view do
  before(:each) do
    assign(:portfolio_image, PortfolioImage.new())
  end

  it "renders new portfolio_image form" do
    render

    assert_select "form[action=?][method=?]", portfolio_images_path, "post" do
    end
  end
end
