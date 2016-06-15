require 'spec_helper'

feature 'Search for Hotel near me', type: :feature do
  scenario 'User Clicks on Search button' do
    visit '/'

    click_button 'Search for Hotels'

    expect(page).to have_content('Results found')
  end
end