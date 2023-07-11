# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

shuttle_1 = Shuttle.create(name: "Columbia", in_service: false, year_built: 1975)
shuttle_1.astronauts.create(name: "Joe Engle", age: 45, space_veteran: false)
shuttle_1.astronauts.create(name: "Richard Truly", age: 46, space_veteran: true)
