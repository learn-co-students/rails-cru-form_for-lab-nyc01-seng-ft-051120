# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.destroy_all
Artist.destroy_all
Genre.destroy_all
# g1 = Genre.create(name: "Pop")
# g2 = Genre.create(name: "Rap")
# g3 = Genre.create(name: "Punk")
# g4 = Genre.create(name: "Rock")
# g5 = Genre.create(name: "Blues")

# art1 = Artist.create(name: "B.B. King", bio: "test bio")
# art2 = Artist.create(name: "Lady Gaga", bio: "test bio")



# Song.create(name: "Thrill is Gone", artist_id: art1.id, genre_id: g5.id)