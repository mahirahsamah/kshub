# frozen_string_literal: true

require 'rails_helper'

# Example
RSpec.describe 'Creating an event', type: :feature do
  sign_in users(:mahirah)
  scenario 'valid inputs' do
    visit new_event_url
    fill_in 'Title', with: 'cookout'
    fill_in 'Location', with: 'zach'
    fill_in 'Organizer', with: 'me'
    # if you use date_select in the form for book:
    # select '2020' :from => 'book_published_date_1i'
    # select '9' :from => 'book_published_date_2i'
    # select '28' :from => 'book_published_date_3i'
    click_on 'Create Event'
    visit events_url
    expect(page).to have_content('cookout')
    expect(page).to have_content('zach')
    expect(page).to have_content('me')
  end
end
