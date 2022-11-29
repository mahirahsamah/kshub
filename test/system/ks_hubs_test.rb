# frozen_string_literal: true

require 'application_system_test_case'

class KsHubsTest < ApplicationSystemTestCase
  setup do
    @ks_hub = ks_hubs(:one)
  end

  test 'visiting the index' do
    visit ks_hubs_url
    assert_selector 'h1', text: 'Ks Hubs'
  end

  test 'creating a Ks hub' do
    visit ks_hubs_url
    click_on 'New Ks Hub'

    fill_in 'Title', with: @ks_hub.title
    click_on 'Create Ks hub'

    assert_text 'Ks hub was successfully created'
    click_on 'Back'
  end

  test 'updating a Ks hub' do
    visit ks_hubs_url
    click_on 'Edit', match: :first

    fill_in 'Title', with: @ks_hub.title
    click_on 'Update Ks hub'

    assert_text 'Ks hub was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Ks hub' do
    visit ks_hubs_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Ks hub was successfully destroyed'
  end
end
