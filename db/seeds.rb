# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = {name: 'Dishoom', address: '7 Boundary St, London E2 7JE' ,phone_number: 02043434343, rating: 5}
pizza_east = {name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ',phone_number: 0241432234, rating: 4}
hoxton =  {name: 'Hoxton100', address: 'Muncesti 162 a', phone_number: 020323232, rating: 5}
kfc =  {name: "KFC East", address: "15 st panctas court n29ae", phone_number: 23243232, rating: 1}
andys =  {name: "Andys Pizza", address: "Stefan Cel Mare 345",phone_number: 020343434, rating: 3}


[dishoom, pizza_east, hoxton, kfc, andys].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
