# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.delete_all 
Genre.delete_all 
Song.delete_all

ariana = Artist.create(name:"Ariana Grande",bio:"I starred at nickelodeon")
britney = Artist.create(name:"Britney Spear",bio:"I shaved my head once")
balvin = Artist.create(name:"J Balvin",bio:"de medellin produciendo")

pop = Genre.create(name:"Pop")
urbano = Genre.create(name:"Urbano")


Song.create(name:"God is a Woman",artist:ariana,genre:pop)
Song.create(name:"Break up with your girlfriend, I'm bored",artist:ariana,genre:pop)
Song.create(name:"Toxic",artist:britney,genre:pop)
Song.create(name:"Slumber party",artist:britney,genre:pop)
Song.create(name:"Morado",artist:balvin,genre:urbano)
Song.create(name:"Amarillo",artist:balvin,genre:urbano)





