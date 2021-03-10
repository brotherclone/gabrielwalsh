require 'rails_helper'

describe 'Validating the global footer' do

  it 'checks the index page for a valid footer', :js => true do
    visit home_path
    expect(page).to have_content('Get in Touch')
    expect(page).to have_content('Privacy & Legal')
    expect(page).to have_css('div.privacy')
    expect(page).to have_css('div.contact')
    expect(page).to have_css('ul.by')
    expect(page).to have_css('li.email')
    expect(page).to have_css('li.linked-in')
  end

end