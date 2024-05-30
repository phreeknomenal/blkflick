# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Create a new people
person1 = Person.create(first_name: "Ryan", last_name: "Coogler", date_of_birth: "1986-05-23", place_of_birth: "Oakland, California", photo: "https://upload.wikimedia.org/wikipedia/commons/4/4b/Ryan_Coogler_by_Gage_Skidmore.jpg", biography: "Ryan Kyle Coogler is an American film director, producer, and screenwriter. His first feature film, Fruitvale Station, won the top audience and grand jury awards in the U.S. dramatic competition at the 2013 Sundance Film Festival. He has since co-written and directed the seventh film in the Rocky series, Creed, and the Marvel Cinematic Universe film Black Panther, the latter of which broke numerous box office records and became the highest-grossing film of all time by a Black director.")
person2 = Person.create(first_name: "Michael", last_name: "B. Jordan", date_of_birth: "1987-02-09", place_of_birth: "Santa Ana, California", photo: "https://upload.wikimedia.org/wikipedia/commons/6/6b/Michael_B._Jordan_by_Gage_Skidmore.jpg", biography: "Michael Bakari Jordan is an American actor and producer. He is known for his film roles as shooting victim Oscar Grant in the drama Fruitvale Station, boxer Adonis Creed in the Rocky sequel film Creed, and Erik Killmonger in Black Panther, all three of which were directed by Ryan Coogler.")
person3 = Person.create(first_name: "Chadwick", last_name: "Boseman", date_of_birth: "1976-11-29", date_of_death: "2020-08-28", place_of_birth: "Anderson, South Carolina", photo: "https://upload.wikimedia.org/wikipedia/commons/8/8d/Chadwick_Boseman_2019_by_Gage_Skidmore.jpg", biography: "Chadwick Aaron Boseman was an American actor. After studying directing at Howard University, he landed his first major role as a series regular on Persons Unknown in 2010. Boseman's breakthrough performance came as baseball player Jackie Robinson in the biographical film 42 (2013). He continued to portray historical figures, starring in Get on Up (2014) as singer James Brown and Marshall (2017) as Supreme Court Justice Thurgood Marshall. Boseman achieved international fame for playing superhero Black Panther in the Marvel Cinematic Universe (MCU) from 2016 to 2019.")
person4 = Person.create(first_name: "Lupita", last_name: "Nyong'o", date_of_birth: "1983-03-01", place_of_birth: "Mexico City, Mexico", photo: "https://upload.wikimedia.org/wikipedia/commons/9/9b/Lupita_Nyong%27o_by_Gage_Skidmore.jpg", biography: "Lupita Amondi Nyong'o is a Kenyan-Mexican actress. The daughter of Kenyan politician Peter Anyang' Nyong'o and Dorothy Ogada Buyu, Nyong'o was born in Mexico City, where her father was teaching, and was raised in Kenya from the age of one. She attended college in the United States, earning a bachelor's degree in film and theater studies from Hampshire College.")
person5 = Person.create(first_name: "Stan", last_name: "Lee", date_of_birth: "1922-12-28", date_of_death: "2018-11-12", place_of_birth: "New York City, New York", photo: "https://upload.wikimedia.org/wikipedia/commons/0/0c/Stan_Lee_by_Gage_Skidmore_2.jpg", biography: "Stan Lee was an American comic book writer, editor, publisher, and producer. He rose through the ranks of a family-run business to become Marvel Comics' primary creative leader for two decades, leading its expansion from a small division of a publishing house to a multimedia corporation that dominated the comics industry.")

# Create new movies
movie1 = Movie.create(title: "Black Panther", release_date: "2018-02-16", duration: 134, poster: "https://upload.wikimedia.org/wikipedia/en/0/0c/Black_Panther_%282018_film%29_poster.jpg", banner_image: "https://upload.wikimedia.org/wikipedia/en/0/0c/Black_Panther_%282018_film%29_poster.jpg", plot: "After the death of his father, T'Challa returns home to the African nation of Wakanda to take his rightful place as king. When a powerful enemy suddenly reappears, T'Challa's mettle as king -- and as Black Panther -- gets tested when he's drawn into a conflict that puts the fate of Wakanda and the entire world at risk. Faced with treachery and danger, the young king must rally his allies and release the full power of Black Panther to defeat his foes and secure the safety of his people.", overview: "Black Panther is a 2018 American superhero film based on the Marvel Comics character of the same name. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures, it is the 18th film in the Marvel Cinematic Universe (MCU).", trailer: "https://www.youtube.com/watch?v=xjDjIWPwcPU", rating: 7.3)
movie2 = Movie.create(title: "Creed", release_date: "2015-11-25", duration: 133, poster: "https://upload.wikimedia.org/wikipedia/en/2/24/Creed_poster.jpg", banner_image: "https://upload.wikimedia.org/wikipedia/en/2/24/Creed_poster.jpg", plot: "Adonis Johnson never knew his famous father, boxing champion Apollo Creed, who died before Adonis was born. However, boxing is in his blood, so he seeks out Rocky Balboa and asks the retired champ to be his trainer. Rocky sees much of Apollo in Adonis, and agrees to mentor him, even as he battles an opponent deadlier than any in the ring. With Rocky's help, Adonis soon gets a title shot, but whether he has the true heart of a fighter remains to be seen.", overview: "Creed is a 2015 American sports drama film directed by Ryan Coogler and written by Coogler and Aaron Covington. A spin-off and sequel to the Rocky film series, the film stars Michael B. Jordan as Adonis Johnson Creed, Apollo Creed's son, with Sylvester Stallone reprising the role of Rocky Balboa.", trailer: "https://www.youtube.com/watch?v=Uv554B7YHk4", rating: 7.6)

# Create genres
genre1 = Genre.create(name: "Action")
genre2 = Genre.create(name: "Adventure")
genre3 = Genre.create(name: "Comedy")
genre4 = Genre.create(name: "Drama")
genre5 = Genre.create(name: "Fantasy")
genre6 = Genre.create(name: "Horror")
genre7 = Genre.create(name: "Mystery")
genre8 = Genre.create(name: "Romance")
genre9 = Genre.create(name: "Science Fiction")
genre10 = Genre.create(name: "Thriller")
genre11 = Genre.create(name: "Western")
genre12 = Genre.create(name: "Animation")
genre13 = Genre.create(name: "Crime")
genre14 = Genre.create(name: "Documentary")
genre15 = Genre.create(name: "Family")
genre16 = Genre.create(name: "History")
genre17 = Genre.create(name: "Music")
genre18 = Genre.create(name: "War")
genre19 = Genre.create(name: "Biography")
genre20 = Genre.create(name: "Sports")
genre21 = Genre.create(name: "Musical")
genre22 = Genre.create(name: "SuperHero")
