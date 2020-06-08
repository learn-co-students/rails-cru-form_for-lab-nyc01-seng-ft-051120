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
kanye = Artist.create(name: "Ye", bio:"Can't tell me Nothin'!")
hiphop = Genre.create(name: "hip-hop")
beyonce = Artist.create(name: "Beyonce", bio:"Hips TikTok when I dance")
rnb = Genre.create(name: "r & b")
mac_miller = Artist.create(name: "Mac Miller", bio:"Circles")
alt = Genre.create(name: "alternative r & b")
Song.create(name: "Homecoming", artist_id: kanye.id, genre_id: hiphop.id)
Song.create(name: "Savage remix", artist_id: beyonce.id, genre_id: rnb.id)
Song.create(name: "Dunno", artist_id: mac_miller.id, genre_id: alt.id)