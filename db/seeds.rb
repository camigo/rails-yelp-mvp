# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

restaurant_a = Movie.create(name: "La Piojera", address: "Pionono  21", phone_number: "111222333", category: "french")
restaurant_b = Movie.create(name: "Laberinto", address: "Bella vista 12", phone_number: "222222333", category: "french")
restaurant_c = Movie.create(name: "Los Canallas", address: "Sandiego 343", phone_number: "333222333", category: "french")
restaurant_d = Movie.create(name: "Parrilladas de Algomedo", address: "Sta. Rosa  221", phone_number: "444222333", category: "french")
restaurant_e = Movie.create(name: "", address: "Pionono  21", phone_number: "555222333", category: "french")
