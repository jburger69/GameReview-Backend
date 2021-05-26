# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Game.delete_all

30.times do
    Game.create(
        title: Faker::Game.title,
        price: Faker::Number.between(from: 1, to: 100),
        genre: Faker::Game.genre,
        platform: Faker::Game.platform,
    )
end

30.times do
    Review.create(
        name: Faker::Name.name,
        content: Faker::Lorem.sentence(word_count: 3),
        game_id: rand(1..30),
    )
end