require 'rails_helper'

RSpec.describe Shuttle, type: :model do
    it {should have_many :astronauts}
end