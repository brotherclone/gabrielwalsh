require 'rails_helper'

describe 'Validating the global navigation' do

  it 'checks the index page for a valid header', :js => true do
    visit home_path
    expect(page).to have_css('h1.name')
    expect(page).to have_css('h2.occupation')
    expect(page).to have_content('Prototyping')
    expect(page).to have_content('Portfolio')
    expect(page).to have_content('Résumé')
    expect(page).to have_css('.portrait')
  end

  it 'checks for accessibility issues in the header', :js => true do
    visit home_path
    expect(page).to have_content('Skip Navigation')
    expect(page).to have_css('a.skip-navigation')
  end

end