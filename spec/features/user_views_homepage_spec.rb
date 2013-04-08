require 'spec_helper'

feature 'User views homepage' do
  scenario 'No show available' do
    visit '/'

    page.should have_content('Winter 2013')
    page.should have_content("We currently don't have any screenshot for any show in this season.")
  end
end
