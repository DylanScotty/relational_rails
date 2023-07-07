require 'rails_helper'

RSpec.describe 'the shuttles show page' do
    it 'displays the shuttle name' do
        shuttle = Shuttle.create(name: "Columbia", in_service: false, year_built: 1975)
        visit "/shuttles/#{shuttle.id}"
    end

    it 'displays the astronuts for the shuttle'

end