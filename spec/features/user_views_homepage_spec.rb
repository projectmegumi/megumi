require 'spec_helper'

feature 'User views homepage' do
  scenario 'No show available' do
    visit '/'

    page.should have_content('Winter 2013')
    page.should have_content("We currently don't have any screenshot")
  end

  scenario 'Shows available' do
    Show.create!(name: 'GJ-bu')
    Show.create!(name: 'Sakurasou no Pet na Kanojo')

    visit '/'

    page.should have_content('GJ-bu')
    page.should have_content('Sakurasou no Pet na Kanojo')
    page.should_not have_content("We currently don't have any screenshot")
  end
end
