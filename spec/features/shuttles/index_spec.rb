require 'rails_helper'

RSpec.describe 'the shuttles index page' do
    it 'displays the shuttle name and created at timestamp' do
        shuttle_1 = Shuttle.create!(name: "Columbia", in_service: false, year_built: 1975)
        shuttle_2 = Shuttle.create!(name: "DragonX", in_service: true, year_built: 2010)
        visit "/shuttles"

        expect(page).to have_content(shuttle_1.name)
        expect(page).to have_content(shuttle_1.created_at)
        expect(page).to have_content(shuttle_2.name)
        expect(page).to have_content(shuttle_2.created_at)
    end
end