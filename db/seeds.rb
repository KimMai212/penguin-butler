# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Butler.destroy_all
puts "All butlers have been deleted."
User.destroy_all
puts "All users have been deleted."
Booking.destroy_all
puts "All bookings have been deleted."

puts "All entries have been deleted."

n = 1
20.times do
  butler = Butler.new({
    name: Faker::FunnyName.name,
    description: Faker::Quote.most_interesting_man_in_the_world,
    price: Faker::Number.decimal(l_digits: 2),
    age: Faker::Number.within(range: 18..70),
    years_of_experience: Faker::Number.within(range: 0..60),
    academic_grade: Faker::Educator.degree,
    address: Faker::Address.street_address,
    zipcode: Faker::Address.zip,
    city: Faker::Address.city,
    country: Faker::Address.country
  })
  butler.photo.attach(io: File.open("app/assets/images/#{n}.jpg"), filename: "#{butler.name}.jpg", content_type: 'image/jpeg')
  butler.save!
  puts "#{butler.name} was created!"
  n += 1
end

leon = Butler.new({
  name: "Leon Entrup",
  description: "Friedrich loves Gordon Ramsay and has mastered the art of Parmigiana di Melanzane for him.",
  price: 200,
  age: 29,
  years_of_experience: 30,
  academic_grade: "Bootcamp graduate",
  address: Faker::Address.street_address,
  zipcode: Faker::Address.zip,
  city: "Munich",
  country: "Germany"
})
leon.photo.attach(io: File.open("app/assets/images/leon.jpg"), filename: "leon.jpg", content_type: 'image/jpeg')
leon.save!
puts "Leon was created!"

puts "Seeding completed!"
