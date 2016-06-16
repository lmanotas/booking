require 'spec_helper'

feature 'Book hotel from result list', type: :feature do
  use_vcr_cassette "hotels_list"

  scenario 'User Clicks on Search button' do
    visit '/'

    click_button 'Search for Hotels'

    click_link 'Book Hotel', match: :first
    fill_in 'Name', :with => 'Pedro Perez'
    fill_in 'From', :with => '8.10.2016'
    fill_in 'To', :with => '9.10.2016'
    click_button 'Confirm Booking'

    expect(page).to have_content('Booking Requested Successfully.')
  end
end