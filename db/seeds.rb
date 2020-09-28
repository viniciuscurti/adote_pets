# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

Pet.destroy_all

puts 'Start'

5.times do
  file = URI.open('https://source.unsplash.com/300x300/?cat')
  pet = Pet.new(
                      name: Faker::Creature::Cat.name.downcase,
                      birth: Faker::Date.between(from: '2014-09-23', to: '2019-09-25'),
                      category: 'cat')
  pet.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  pet.save!
end

5.times do
  file = URI.open('https://source.unsplash.com/300x300/?dog')
  pet = Pet.new(
                      name: Faker::Creature::Dog.name.downcase,
                      birth: Faker::Date.between(from: '2014-09-23', to: '2019-09-25'),
                      category: 'dog')
  pet.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  pet.save!
end

puts 'Finish'