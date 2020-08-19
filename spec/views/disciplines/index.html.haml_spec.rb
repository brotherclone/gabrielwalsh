require 'rails_helper'

RSpec.describe "disciplines/index", type: :view do
  before(:each) do
    assign(:disciplines, [
      Discipline.create!(),
      Discipline.create!()
    ])
  end

  it "renders a list of disciplines" do
    render
  end
end
