require 'rails_helper'

describe 'Validating the global navigation' do

  it 'checks the index page for a valid header', :js => true do
    visit home_path
    expect(page).to have_css('name')
    expect(page).to have_css('occupation')
    expect(page).to have_css('ul.navigation')
    expect(page).to have_content('Prototyping')
    expect(page).to have_content('Portfolio')
    expect(page).to have_content('Resume')
    expect(page).to have_css('img.portrait')
  end

end