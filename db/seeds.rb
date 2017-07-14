Song.delete_all
Artist.delete_all

my_baby = Artist.create!(name: "My Baby", remote_image_url: "http://res.cloudinary.com/mojgan/image/upload/v1500018160/mybaby2_eyzcqy.jpg")
whitney_houston = Artist.create!(name: "Whitney Houston", remote_image_url: "http://res.cloudinary.com/mojgan/image/upload/v1500018171/whitney_kgnswj.jpg")
iron_maiden = Artist.create!(name: "Iron Maiden", remote_image_url: "http://res.cloudinary.com/mojgan/image/upload/v1500018165/ironmaiden2_emfmjm.jpg")
beth_hart = Artist.create!(name: 'Beth Hart', remote_image_url: 'http://res.cloudinary.com/mojgan/image/upload/v1500018314/beth-hart-up-close-and-personal-cd_gjzdfw.jpg')
stevie_ray_vaughan = Artist.create!(name: 'Stevie Ray Vaughan', remote_image_url: 'http://res.cloudinary.com/mojgan/image/upload/v1500017034/stevie_gqjhl1.jpg')


artist_count = Artist.all.length
puts "#{artist_count} artists were created."


song1 = Song.create!({name: "Uprising", artist: my_baby })
song2 = Song.create!({name: "Seeing Red", artist: my_baby })
song3 = Song.create!({name: "Make a hundred", artist: my_baby })
song4 = Song.create!({name: "I Wanna Dance with Somebody", artist: whitney_houston })
song5 = Song.create!({name: "How Will I know", artist: whitney_houston })
song6 = Song.create!({name: "My Love is Your Love", artist: whitney_houston })
song7 = Song.create!({name: "The Trooper", artist: iron_maiden })
song8 = Song.create!({name: "Run to the Hills", artist: iron_maiden })
song9 = Song.create!({name: "Fear of the Dark", artist: iron_maiden })
song10 = Song.create!({name: 'Chocolate Jesus', artist: beth_hart})
song11 = Song.create!({name: 'Strange Fruit', artist: beth_hart})
song12 = Song.create!({name: 'L.A. Song', artist: beth_hart})
song13 = Song.create!({name: 'Texas Flood', artist: stevie_ray_vaughan})
song14 = Song.create!({name: 'Pride and Joy', artist: stevie_ray_vaughan})
song15 = Song.create!({name: 'Voodoo Child', artist: stevie_ray_vaughan})


song_count = Song.all.length
puts "#{song_count} songs were created."
