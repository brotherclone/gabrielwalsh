require 'rails_helper'

RSpec.describe "degrees/index", type: :view do
  before(:each) do
    assign(:degrees, [
      Degree.create!(),
      Degree.create!()
    ])
  end

  # it "renders a list of degrees" do
  #   render
  # end
end
