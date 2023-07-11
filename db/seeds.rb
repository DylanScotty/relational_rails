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

shuttle_2 = Shuttle.create(name: "Discovery", in_service: false, year_built: 1985)
shuttle_2.astronauts.create(name: "Henry Hartsfield", age: 45, space_veteran: true)
shuttle_2.astronauts.create(name: "Judith Resnik", age: 35, space_veteran: false)

shuttle_3 = Shuttle.create(name: "DragonX", in_service: true, year_built: 2010)
shuttle_3.astronauts.create(name: "Douglas Hurley", age: 54, space_veteran: true)
shuttle_3.astronauts.create(name: "Robert Behnken", age: 50, space_veteran: true)
