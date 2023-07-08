require 'rails_helper'

RSpec.describe 'the astronauts index' do
    it 'displays the astronauts name, age, and if they are a space veteran' do
        shuttle = Shuttle.create!(name: "Columbia", in_service: false, year_built: 1975)
        astronaut_1 = shuttle.astronauts.create(name: "Joe Engle", age: 45, space_veteran: false)
        astronaut_2 = shuttle.astronauts.create(name: "Richard Truly", age: 46, space_veteran: false)
        visit "/astronauts"

        expect(page).to have_content(astronaut_1.name)
        expect(page).to have_content(astronaut_1.age)
        expect(page).to have_content(astronaut_1.space_veteran)
        expect(page).to have_content(astronaut_2.name)
        expect(page).to have_content(astronaut_2.age)
        expect(page).to have_content(astronaut_2.space_veteran)
    end
end
