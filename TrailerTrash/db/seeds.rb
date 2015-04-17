# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Movie.destroy_all
Actor.destroy_all

starwars = Movie.create(title:"Star Wars", year:"1977", poster_url:"http://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Star_Wars_Logo.svg/2000px-Star_Wars_Logo.svg.png", plot: "A long time ago... in a universe far away.")
interstellar = Movie.create(title:"Interstellar", year:"2014", poster_url:"http://upload.wikimedia.org/wikipedia/en/3/3c/Godzilla_Empire_Reveal.jpg", plot: "a brilliant NASA physicist, is working on plans to save mankind by transporting Earth's population to a new home via a wormhole")
godzilla = Movie.create(title:"Godzilla", year:"2014", poster_url:"http://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Star_Wars_Logo.svg/2000px-Star_Wars_Logo.svg.png", plot: "Godzilla, King of the Monsters, arises from the sea to combat malevolent adversaries that threaten the survival of humanity.")

harrison_ford = Actor.create(name:"Harrison Ford", photo_url:"http://upload.wikimedia.org/wikipedia/commons/9/9f/Harrison_Fords_Jules_Verne_Award_(cropped).JPG", movie: starwars)
mark_hamill = Actor.create(name:"Mark Hamill", photo_url:"http://ia.media-imdb.com/images/M/MV5BMTY3Njc5ODc4OV5BMl5BanBnXkFtZTYwNjY5MTU0._V1_SX640_SY720_.jpg", movie: starwars)

matthew_mcconaughey = Actor.create(name:"Matthew McConaughey", photo_url:"http://ia.media-imdb.com/images/M/MV5BMTg0MDc3ODUwOV5BMl5BanBnXkFtZTcwMTk2NjY4Nw@@._V1_SX214_CR0,0,214,317_AL_.jpg", movie: interstellar)
ellen_burstyn = Actor.create(name:"Ellen Burstyn", photo_url:"http://ia.media-imdb.com/images/M/MV5BMTU4MjYxMDc3MF5BMl5BanBnXkFtZTYwNzU3MDIz._V1_SX640_SY720_.jpg", movie: interstellar)

aaron_johnson = Actor.create(name:"Aaron Johnson", photo_url:"http://vignette4.wikia.nocookie.net/marvelmovies/images/f/f1/Aaron_Johnson.jpg/revision/latest?cb=20120220010041", movie: godzilla)
bryan_cranston = Actor.create(name:"Bryan Cranston", photo_url:"http://ia.media-imdb.com/images/M/MV5BMTA2NjEyMTY4MTVeQTJeQWpwZ15BbWU3MDQ5NDAzNDc@._V1_SX214_CR0,0,214,317_AL_.jpg", movie: godzilla)



# t.string :title
# t.string :year
# t.string :poster_url
# t.text :plot
# t.timestamps

# t.string :name
# t.string :photo_url
# t.timestamps
# t.references :movie
# t.integer :movie_id
