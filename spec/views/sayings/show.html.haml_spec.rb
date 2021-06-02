require 'rails_helper'

RSpec.describe "sayings/show", type: :view do
  before(:each) do
    @saying = assign(:saying, Saying.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
