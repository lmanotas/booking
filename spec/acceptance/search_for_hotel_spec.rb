require 'spec_helper'

feature 'Search for Hotel near me', type: :feature do
  use_vcr_cassette "hotels_list"

  scenario 'User Clicks on Search button' do
    visit '/'

    click_button 'Search for Hotels'

    expect(page).to have_content('Results found')
    expect(page).to have_selector('table.hotel-list-table')
  end
end