# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
restaurant1 = Restaurant.create!(name: "Chez Marion", star:5, address: "Boulevard de la libération")
restaurant2 = Restaurant.create!(name: "Entrecôte", star:4, address: "Vieux Porc")
restaurant3 = Restaurant.create!(name: "Marcel", star:5, address: "Porte d'Aix")

puts "#{Restaurant.count} restaurants in Database"
