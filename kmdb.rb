# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
Movie.destroy_all
Person.destroy_all
Role.destroy_all



# Generate models and tables, according to the domain model
#done via terminal and migrate folders

# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.


#insert actor data
human = {  name: "Christian Bale"}
person = Person.new(human)
person.save
human = {  name: "Michael Caine"}
person = Person.new(human)
person.save
human = {  name: "Liam Neeson"}
person = Person.new(human)
person.save
human = {  name: "Katie Holmes"}
person = Person.new(human)
person.save
human = {  name: "Gary Oldman"}
person = Person.new(human)
person.save
human = {  name: "Heath Ledger"}
person = Person.new(human)
person.save
human = {  name: "Aaron Eckhart"}
person = Person.new(human)
person.save
human = {  name: "Maggie Gyllenhaal"}
person = Person.new(human)
person.save
human = {  name: "Tom Hardy"}
person = Person.new(human)
person.save
human = {  name: "Joseph Gordon-Levitt"}
person = Person.new(human)
person.save
human = {  name: "Anne Hathaway"}
person = Person.new(human)
person.save
human = {  name: "Christopher Nolan"}
person = Person.new(human)
person.save



#insert movie data
director=Person.where({name: "Christopher Nolan"})[0]
movie1 = {
  title: "Batman Begins",
  year_released: 2005,
  rated: "PG-13",
  person_id: director.id
}
film = Movie.new(movie1)
film.save

director=Person.where({name: "Christopher Nolan"})[0]
movie2 = {
  title: "The Dark Knight",
  year_released: 2008,
  rated: "PG-13",
  person_id: director.id
}
film = Movie.new(movie2)
film.save

director=Person.where({name: "Christopher Nolan"})[0]
movie3 = {
  title: "The Dark Knight Rises",
  year_released: 2012,
  rated: "PG-13",
  person_id: director.id
}
film = Movie.new(movie3)
film.save




#Insert role data
#Batman Begins

movie=Movie.where({title: "Batman Begins"})[0]
actor=Person.where({name: "Christian Bale"})[0]

character = {  movie_id: movie.id,  person_id: actor.id,  character_name: "Bruce Wayne"}
role = Role.new(character)
role.save

actor=Person.where({name: "Michael Caine"})[0]
character = {  movie_id: movie.id,  person_id: actor.id,  character_name: "Alfred"}
role = Role.new(character)
role.save

actor=Person.where({name: "Liam Neeson"})[0]
character = {  movie_id: movie.id,  person_id: actor.id,  character_name: "Ras Al Ghul"}
role = Role.new(character)
role.save

actor=Person.where({name: "Katie Holmes"})[0]
character = {  movie_id: movie.id,  person_id: actor.id,  character_name: "Rachel Dawes"}
role = Role.new(character)
role.save

actor=Person.where({name: "Gary Oldman"})[0]
character = {  movie_id: movie.id,  person_id: actor.id,  character_name: "Commissioner Gordon"}
role = Role.new(character)
role.save


#The Dark Knight

movie=Movie.where({title: "The Dark Knight"})[0]
actor=Person.where({name: "Christian Bale"})[0]
character = {  movie_id: movie.id,  person_id: actor.id,  character_name: "Bruce Wayne"}
role = Role.new(character)
role.save

actor=Person.where({name: "Heath Ledger"})[0]
character = {  movie_id: movie.id,  person_id: actor.id,  character_name: "Joker"}
role = Role.new(character)
role.save

actor=Person.where({name: "Aaron Eckhart"})[0]
character = {  movie_id: movie.id,  person_id: actor.id,  character_name: "Harvey Dent"}
role = Role.new(character)
role.save

actor=Person.where({name: "Michael Caine"})[0]
character = {  movie_id: movie.id,  person_id: actor.id,  character_name: "Alfred"}
role = Role.new(character)
role.save

actor=Person.where({name: "Maggie Gyllenhaal"})[0]
character = {  movie_id: movie.id,  person_id: actor.id,  character_name: "Rachel Dawes"}
role = Role.new(character)
role.save


#The Dark Knight

movie=Movie.where({title: "The Dark Knight Rises"})[0]
actor=Person.where({name: "Christian Bale"})[0]
character = {  movie_id: movie.id,  person_id: actor.id,  character_name: "Bruce Wayne"}
role = Role.new(character)
role.save

actor=Person.where({name: "Gary Oldman"})[0]
character = {  movie_id: movie.id,  person_id: actor.id,  character_name: "Commissioner Gordon"}
role = Role.new(character)
role.save

actor=Person.where({name: "Tom Hardy"})[0]
character = {  movie_id: movie.id,  person_id: actor.id,  character_name: "Bane"}
role = Role.new(character)
role.save

actor=Person.where({name: "Joseph Gordon-Levitt"})[0]
character = {  movie_id: movie.id,  person_id: actor.id,  character_name: "John Blake"}
role = Role.new(character)
role.save

actor=Person.where({name: "Anne Hathaway"})[0]
character = {  movie_id: movie.id,  person_id: actor.id,  character_name: "Selina Kyle"}
role = Role.new(character)
role.save






#output
# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""


# Query the movies data and loop through the results to display the movies output
films=Movie.all
for film in films
    director=film.person
    puts "#{film.title}   #{film.year_released}   #{film.rated}   #{director.name}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
roles=Role.all
for role in roles
    movie=role.movie
    actor=role.person
    puts "#{movie.title}  #{actor.name}   #{role.character_name}"
end