# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Seeding Begin"

part_one =  Part.create(name: "Huge Alternator", description: "This this is really huge", oem: true, price: 10.25)
car_one =   CarModel.create(name: "Impreza")
year_one =  Year.create(year: 1998)
make_one =  Make.create(name: "Subaru")
YearCarModel.create(year_id: year_one.id, car_model_id: car_one.id)
MakeCarModelPart.create(car_model_id: car_one.id, make_id: make_one.id, part_id: part_one.id)

puts "Seeding Successful"
