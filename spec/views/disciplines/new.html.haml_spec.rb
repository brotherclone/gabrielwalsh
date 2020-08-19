require 'rails_helper'

RSpec.describe "disciplines/new", type: :view do
  before(:each) do
    assign(:discipline, Discipline.new())
  end

  it "renders new discipline form" do
    render

    assert_select "form[action=?][method=?]", disciplines_path, "post" do
    end
  end
end
