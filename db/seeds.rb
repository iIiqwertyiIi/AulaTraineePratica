# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
    g = Game.create(title: Faker::Game.unique.title, genre: Faker::Game.genre, platform: Faker::Game.platform, release: Faker::Date.backward(days: 10000))
    g.photo.attach(io: File.open('./public/img.jpg'), filename: 'img.jpg')
end
