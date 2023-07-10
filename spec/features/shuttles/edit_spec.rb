require 'rails_helper'

RSpec.describe 'the shuttle edit' do
  it 'links to the edit page' do
    shuttle = Shuttle.create!(name: "Columbia", in_service: false, year_built: 1975)
    visit "/shuttles/#{shuttle.id}"

    click_link("Update Shuttle")

    expect(current_path).to eq("/shuttles/#{shuttle.id}/edit")
  end

  it 'can edit the shuttle' do
    shuttle = Shuttle.create!(name: "Columbial", in_service: false, year_built: 1975)
    visit "/shuttles/#{shuttle.id}"

    expect(page).to have_content('Columbial')

    click_link('Update Shuttle')

    fill_in 'Name', with: 'Columbia'
    click_button('Update Shuttle')

    expect(current_path).to eq("/shuttles/#{shuttle.id}")
    expect(page).to have_content('Columbia')
    expect(page).to_not have_content('Columbial')
  end
end