require 'spec_helper'

feature 'User views homepage' do
  scenario 'No show available' do
    visit '/'

    page.should have_content('Winter 2013')
    page.should have_content("We currently don't have any screenshot")
  end

  scenario 'Shows available' do
    @gj_bu = Show.create!(name: 'GJ-bu', cover_image: fixture_file('gj-bu.jpg'))
    @sakurasou = Show.create!(name: 'Sakurasou no Pet na Kanojo', cover_image: fixture_file('sakurasou.jpg'))

    visit '/'

    page.should have_content('GJ-bu')
    page.should have_content('Sakurasou no Pet na Kanojo')
    page.should_not have_content("We currently don't have any screenshot")
  end
end
