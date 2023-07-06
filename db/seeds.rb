# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Deleting all flats..."

Flat.destroy_all

puts "Creating all flats!"

3.times do
  name_ending = ['heights', 'palace', 'court', 'palooza'].sample

  images = ['https://images.unsplash.com/photo-1494526585095-c41746248156?w=1200', 'https://images.unsplash.com/photo-1570129477492-45c003edd2be?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2370&q=80', 'https://images.unsplash.com/photo-1480074568708-e7b720bb3f09?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1474&q=80', 'https://images.unsplash.com/photo-1505691723518-36a5ac3be353?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80'].sample

  flat = Flat.create!(
    name: "#{Faker::Dessert.topping} #{name_ending}",
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph,
    price_per_night: rand(6_000..42_000),
    number_of_guests: rand(1..5),
    image_url: images
  )
  puts "#{flat.name} has been created."
end

puts "Finished"
