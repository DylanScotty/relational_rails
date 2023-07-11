require 'rails_helper'

RSpec.describe 'The Shuttle creation' do
  it 'links to the new page from the Shuttle index' do
    visit '/shuttles'

    click_link('New Shuttle')
    expect(current_path).to eq('/shuttles/new')
  end

  it 'can create a new team' do
    visit '/shuttles/new'

    fill_in('Name', with: 'Dragon')
    click_button('Create Shuttle')

    expect(current_path).to eq("/shuttles")
    expect(page).to have_content("Dragon")
  end
end