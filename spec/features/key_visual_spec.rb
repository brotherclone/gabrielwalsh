require 'rails_helper'

describe 'Validating the key visual component' do

  it 'checks the home page for the key visual component', :js => true do
    visit home_path
    expect(page).to have_css('.main-visual')
  end

end