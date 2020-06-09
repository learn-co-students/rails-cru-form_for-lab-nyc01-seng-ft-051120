# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Genre.destroy_all
Song.destroy_all

p 'Destroying all'

50.times do
  Artist.create(name: Faker::Music.band, bio: Faker::Quote.most_interesting_man_in_the_world )
end

50.times do
  Genre.create(name: Faker::Music.genre )
end

50.times do
  Song.create(name: Faker::Music::Phish.song, artist_id: rand(1..50), genre_id: rand(1..50))
end

p "Created all"
