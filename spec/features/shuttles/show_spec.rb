require 'rails_helper'

RSpec.describe 'the shuttles show page' do
    it 'displays the shuttle name, in_service, year_built' do
        shuttle_1 = Shuttle.create(name: "Columbia", in_service: false, year_built: 1975)
        shuttle_2 = Shuttle.create(name: "DragonX", in_service: true, year_built: 2010)
        astronaut_1 = shuttle_1.astronauts.create(name: "Joe Engle", age: 45, space_veteran: false)
        astronaut_2 = shuttle_1.astronauts.create(name: "Richard Truly", age: 46, space_veteran: false)
        visit "/shuttles/#{shuttle_1.id}"

        expect(page).to have_content(shuttle_1.name)
        expect(page).to have_content(shuttle_1.in_service)
        expect(page).to have_content(shuttle_1.year_built)
        expect(page).to_not have_content(shuttle_2.name)
        expect(page).to_not have_content(shuttle_2.in_service)
        expect(page).to_not have_content(shuttle_2.year_built)
    end

end