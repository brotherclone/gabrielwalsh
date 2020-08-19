require 'rails_helper'

RSpec.describe "degrees/show", type: :view do
  before(:each) do
    @degree = assign(:degree, Degree.create!())
  end

  # it "renders attributes in <p>" do
  #   render
  # end
end
