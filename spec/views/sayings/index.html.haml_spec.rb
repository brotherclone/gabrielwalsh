require 'rails_helper'

RSpec.describe "sayings/index", type: :view do
  before(:each) do
    assign(:sayings, [
      Saying.create!(),
      Saying.create!()
    ])
  end

  it "renders a list of sayings" do
    render
  end
end
