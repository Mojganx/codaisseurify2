Song.delete_all
Artist.delete_all

artist1 = Artist.create!(name: "My Baby", remote_image_url: "http://res.cloudinary.com/mojgan/image/upload/v1499715899/0004593960_10_zqi2dd.jpg")
artist2 = Artist.create!(name: "Whitney Houston", remote_image_url: "http://res.cloudinary.com/mojgan/image/upload/v1499715907/Whitney_Houston_-_Whitney_Houston__album_q9opmf.jpg")
artist3 = Artist.create!(name: "Iron Maiden", remote_image_url: "http://res.cloudinary.com/mojgan/image/upload/v1499608120/ironmaiden_sqkbzb.jpg")


artist_count = Artist.all.length
puts "#{artist_count} artists were created."


song1 = Song.create!({name: "Uprising", artist: artist1 })
song2 = Song.create!({name: "Seeing Red", artist: artist1 })
song3 = Song.create!({name: "Make a hundred", artist: artist1 })
song4 = Song.create!({name: "I Wanna Dance with Somebody", artist: artist2 })
song5 = Song.create!({name: "How Will I know", artist: artist2 })
song6 = Song.create!({name: "My Love is Your Love", artist: artist2 })
song7 = Song.create!({name: "The Trooper", artist: artist3 })
song8 = Song.create!({name: "Run to the Hills", artist: artist3 })
song9 = Song.create!({name: "Fear of the Dark", artist: artist3 })


song_count = Song.all.length
puts "#{song_count} songs were created."
