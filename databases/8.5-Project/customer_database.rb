require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("customers.db")
db.results_as_hash = true 


create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS colors(
    id INTEGER PRIMARY KEY,
    color VARCHAR(255)
  )
SQL

db.execute(create_table)


create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS movies(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255)
  )
SQL

db.execute(create_table)


create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS customers(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    age INT,
    color_id INT,
    movie_id INT,
    FOREIGN KEY (color_id) REFERENCES colors(id),
    FOREIGN KEY (movie_id) REFERENCES movies(id)
  )
SQL

db.execute(create_table)


def create_color(db, color)
  db.execute("INSERT INTO colors (color) VALUES (?)", [color])
end

# create_color(db, "Blue")
# create_color(db, "Green")
# create_color(db, "Red")
# create_color(db, "White")
# create_color(db, "Yellow")
# create_color(db, "Black")
# create_color(db, "Grey")
# create_color(db, "Orange")
# create_color(db, "Purple")
# create_color(db, "Pink")
# create_color(db, "Brown")
# create_color(db, "Magenta")

def create_movie(db, title)
  db.execute("INSERT INTO movies (title) VALUES (?)", [title])
end

# create_movie(db, "The Boss Baby")
# create_movie(db, "The Fate of the Furious")
# create_movie(db, "Going in Style")
# create_movie(db, "Get Out")
# create_movie(db, "Unforgettable")
# create_movie(db, "Moonlight")
# create_movie(db, "La La Land")
# create_movie(db, "The Jungle Book")
# create_movie(db, "Zootopia")
# create_movie(db, "Finding Dory")
# create_movie(db, "Arrival")
# create_movie(db, "Smurfs")


def create_customer(db, first_name, last_name, age, color_id, movie_id)
  db.execute("INSERT INTO customers (first_name, last_name, age, color_id, movie_id) VALUES (?, ?, ?, ?, ?)", [first_name, last_name, age, color_id, movie_id])
end

#create_customer(db, "Tara", "Armov", 25, 3, 5)



# 5.times do 
# 	age = rand(18..45)

# 	colors = db.execute("SELECT * FROM colors")
# 	colors_length = colors.length
# 	random_color = rand(1..colors_length)

# 	movies = db.execute("SELECT * FROM movies")
# 	movies_length = movies.length
# 	random_movie = rand(1..movies_length)

# 	create_customer(db, Faker::Name.first_name, Faker::Name.last_name, age, random_color, random_movie)
# end 

#################### notes
#SELECT * FROM customers, movies, colors WHERE customers.movie_id = movies.id AND customers.color_id = colors.id;

# colors = db.execute("SELECT * FROM colors")
# puts colors.class
# p colors.length

# movies = db.execute("SELECT * FROM movies")
# puts movies.class
# p movies.length

# customers = db.execute("SELECT * FROM customers")
# puts customers.class
# p customers




