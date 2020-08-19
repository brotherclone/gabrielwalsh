require 'rails_helper'

RSpec.describe "disciplines/edit", type: :view do
  before(:each) do
    @discipline = assign(:discipline, Discipline.create!())
  end

  it "renders the edit discipline form" do
    render

    assert_select "form[action=?][method=?]", discipline_path(@discipline), "post" do
    end
  end
end
