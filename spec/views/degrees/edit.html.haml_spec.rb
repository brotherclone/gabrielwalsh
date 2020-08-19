require 'rails_helper'

RSpec.describe "degrees/edit", type: :view do
  before(:each) do
    @degree = assign(:degree, Degree.create!())
  end

  # it "renders the edit degree form" do
  #   render
  #
  #   assert_select "form[action=?][method=?]", degree_path(@degree), "post" do
  #   end
  # end
end
