require 'rails_helper'

RSpec.describe 'the astronaut edit' do
  it 'links to the edit page' do
    shuttle = Shuttle.create!(name: "Columbia", in_service: false, year_built: 1975)
    astronaut = shuttle.astronauts.create(name: "Joe Engle", age: 45, space_veteran: false)

    visit "/astronauts/#{astronaut.id}"

    click_link "Update Astronaut"

    expect(current_path).to eq("/astronauts/#{astronaut.id}/edit")
  end

  it 'can edit the astronaut' do
    shuttle = Shuttle.create!(name: "Columbia", in_service: false, year_built: 1975)
    astronaut = shuttle.astronauts.create(name: "Joe Bagle", age: 45, space_veteran: false)


    visit "/astronauts/#{astronaut.id}"

    expect(page).to have_content('Joe Bagle')

    click_link 'Update Astronaut'

    fill_in 'Name', with: 'Joe Engle'
    click_button 'Update Astronaut'

    expect(current_path).to eq("/astronauts/#{astronaut.id}")
    expect(page).to have_content('Joe Engle')
  end
end