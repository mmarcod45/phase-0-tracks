require 'sqlite3'
require 'faker'

class Database

  attr_reader :db

  def initialize
    @db = SQLite3::Database.new("customers.db")
    @db.results_as_hash = true 
  end 
                        # the db below as an argument might not be needed. It is already an instance variable.
  def create_customer(db, first_name, last_name, age, color_id, movie_id)
    @db.execute("INSERT INTO customers (first_name, last_name, age, color_id, movie_id) VALUES (?, ?, ?, ?, ?)", [first_name, last_name, age, color_id, movie_id])
  end

  def delete_customer(db, name1, name2)
    @db.execute("DELETE FROM customers WHERE first_name=? AND last_name=?", [name1], [name2])
    # delete_customer(db, "Tara", "Smith")
  end 

  def update_customer(db, name1, name2, input, change_to)
    if input == "first name"
      @db.execute("UPDATE customers SET first_name=? WHERE first_name=? AND last_name=?", [change_to], [name1], [name2])
    elsif input == "last name"
      @db.execute("UPDATE customers SET last_name=? WHERE first_name=? AND last_name=?", [change_to], [name1], [name2])
    elsif input == "age"
      @db.execute("UPDATE customers SET age=? WHERE first_name=? AND last_name=?", [change_to.to_i], [name1], [name2])
    elsif input == "color"
      @db.execute("UPDATE customers SET color_id=? WHERE first_name=? AND last_name=?", [change_to.to_i], [name1], [name2])
    elsif input == "movie"
      @db.execute("UPDATE customers SET movie_id=? WHERE first_name=? AND last_name=?", [change_to.to_i], [name1], [name2])
    else
      puts "Please choose valid input"
    end 
    # update_customer(db, "Mary", "Asia", "Schuppe")
  end 

  def display_colors
    colors = @db.execute("SELECT * FROM colors")
    colors.each do |item|
      puts "#{item['id']} #{item['color']}"
    end 
  end 

  def display_movies
    movies = @db.execute("SELECT * FROM movies")
    movies.each do |item|
      puts "#{item['id']} #{item['title']}"
    end  
  end

end 


# user interface 

puts "Select the number what you would like to do in the database:"
puts "1 to Insert customer"
puts "2 to Delete customer"
puts "3 to Update customer"

input = gets.chomp.to_i

database = Database.new

#input = ""
#until input == "done"
  if input == 1
    puts "Enter customer first name:"
    first_name = gets.chomp
    puts "Enter customer last name:"
    last_name = gets.chomp
    puts "Enter the customer's age:"
    age = gets.chomp.to_i
    puts "Enter id for customer's favorite color:"
    favorite_color = gets.chomp.to_i
    puts "Enter id for customer's favorite movie:"
    favorite_movie = gets.chomp.to_i 

    database.create_customer(@db, first_name, last_name, age, favorite_color, favorite_movie)
  elsif input == 2
    puts "Enter the first name of the customer you want to delete:"
    first_name = gets.chomp
    puts "Enter the last name of the customer you want to delete:"
    last_name = gets.chomp

    database.delete_customer(@db, first_name, last_name)

  elsif input == 3 
    puts "Enter the first name of the customer for the entry you want to update:"
    first_name = gets.chomp
    puts "Enter the last name of the customer for the entry you want to update:"
    last_name = gets.chomp

    puts "Type the entry for '#{first_name} #{last_name}' that you want to update?"
    puts "first name, last name, age, color, or movie"
    input = gets.chomp 


    if input == "color"
      puts "Type the id for the #{input} you would like to change to:"
      database.display_colors
      change_to = gets.chomp
    elsif input == "movie"
      puts "Type the id for the #{input} you would like to change to:"
      database.display_movies
      change_to = gets.chomp
    else
      puts "Type what you would like to change #{input} to:"
      change_to = gets.chomp
    end 

    database.update_customer(@db, first_name, last_name, input, change_to)


  end 
#end




# db = SQLite3::Database.new("customers.db")
# db.results_as_hash = true 


##############################################################


# create_table = <<-SQL
#   CREATE TABLE IF NOT EXISTS colors(
#     id INTEGER PRIMARY KEY,
#     color VARCHAR(255)
#   )
# SQL

# db.execute(create_table)


# create_table = <<-SQL
#   CREATE TABLE IF NOT EXISTS movies(
#     id INTEGER PRIMARY KEY,
#     title VARCHAR(255)
#   )
# SQL

# db.execute(create_table)


# create_table = <<-SQL
#   CREATE TABLE IF NOT EXISTS customers(
#     id INTEGER PRIMARY KEY,
#     first_name VARCHAR(255),
#     last_name VARCHAR(255),
#     age INT,
#     color_id INT,
#     movie_id INT,
#     FOREIGN KEY (color_id) REFERENCES colors(id),
#     FOREIGN KEY (movie_id) REFERENCES movies(id)
#   )
# SQL

# db.execute(create_table)


# def create_color(db, color)
#   db.execute("INSERT INTO colors (color) VALUES (?)", [color])
# end

# # create_color(db, "Blue")
# # create_color(db, "Green")
# # create_color(db, "Red")
# # create_color(db, "White")
# # create_color(db, "Yellow")
# # create_color(db, "Black")
# # create_color(db, "Grey")
# # create_color(db, "Orange")
# # create_color(db, "Purple")
# # create_color(db, "Pink")
# # create_color(db, "Brown")
# # create_color(db, "Magenta")

# def create_movie(db, title)
#   db.execute("INSERT INTO movies (title) VALUES (?)", [title])
# end

# # create_movie(db, "The Boss Baby")
# # create_movie(db, "The Fate of the Furious")
# # create_movie(db, "Going in Style")
# # create_movie(db, "Get Out")
# # create_movie(db, "Unforgettable")
# # create_movie(db, "Moonlight")
# # create_movie(db, "La La Land")
# # create_movie(db, "The Jungle Book")
# # create_movie(db, "Zootopia")
# # create_movie(db, "Finding Dory")
# # create_movie(db, "Arrival")
# # create_movie(db, "Smurfs")


# def create_customer(db, first_name, last_name, age, color_id, movie_id)
#   db.execute("INSERT INTO customers (first_name, last_name, age, color_id, movie_id) VALUES (?, ?, ?, ?, ?)", [first_name, last_name, age, color_id, movie_id])
# end

# # create_customer(db, "Tara", "Armov", 25, 3, 5)
# #create_customer(db, "Tara", "Smith", 26, 2, 1)







##############################################################



# UPDATE rabbits SET age=4 WHERE name="Queen Bey";

#   def delete_customer(db, name1, name2)
#     db.execute("DELETE FROM customers WHERE first_name=? AND last_name=?", [name1], [name2])
#     # delete_customer(db, "Tara", "Smith")
#   end


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




