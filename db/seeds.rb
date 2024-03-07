# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all
puts "Destroying all restaurants"

Restaurant.create!(
  name: "Lalibela",
  address: "Alexander Platz",
  phone_number: "1769876534",
  category: "Chinese"
)
Restaurant.create!(
  name: "Nampan",
  address: "Charlottenberg",
  phone_number: "17665376534",
  category: "japanese"
)
Restaurant.create!(
  name: "Liebe",
  address: "Hermenplatz",
  phone_number: "17665376111",
  category: "italian"
)

Restaurant.create!(
  name: "Mumbai",
  address: "Check-point Charle",
  phone_number: "17665376111",
  category: "french"
)

Restaurant.create!(
  name: "Olla",
  address: "Hermenplatz",
  phone_number: "17665376111",
  category: "belgian"
)
puts "restaurants created"
