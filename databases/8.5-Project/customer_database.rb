require 'sqlite3'
require 'faker'

class Database

  attr_reader :db

  def initialize
    @db = SQLite3::Database.new("customers.db")
    @db.results_as_hash = true
  end 
                        
  def create_customer(first_name, last_name, age, color_id, movie_id)
    @db.execute("INSERT INTO customers (first_name, last_name, age, color_id, movie_id) VALUES (?, ?, ?, ?, ?)", [first_name, last_name, age, color_id, movie_id])
  end

  def delete_customer(name1, name2)
    @db.execute("DELETE FROM customers WHERE first_name=? AND last_name=?", [name1], [name2])
  end 

  def update_customer(name1, name2, input_2, change_to)
    if input_2 == "first name"
      @db.execute("UPDATE customers SET first_name=? WHERE first_name=? AND last_name=?", [change_to], [name1], [name2])
    elsif input_2 == "last name"
      @db.execute("UPDATE customers SET last_name=? WHERE first_name=? AND last_name=?", [change_to], [name1], [name2])
    elsif input_2 == "age"
      @db.execute("UPDATE customers SET age=? WHERE first_name=? AND last_name=?", [change_to.to_i], [name1], [name2])
    elsif input_2 == "color"
      @db.execute("UPDATE customers SET color_id=? WHERE first_name=? AND last_name=?", [change_to.to_i], [name1], [name2])
    elsif input_2 == "movie"
      @db.execute("UPDATE customers SET movie_id=? WHERE first_name=? AND last_name=?", [change_to.to_i], [name1], [name2])
    elsif input_2 == "email"
      @db.execute("UPDATE customers SET email=? WHERE first_name=? AND last_name=?", [change_to], [name1], [name2])
    else
      puts "Please choose valid input"
    end 
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

  def display_customers(name)
    puts "Existing customer(s):"
    customers = @db.execute("SELECT * FROM customers WHERE customers.last_name =?", [name])
    customers.each do |item|
      puts "First name: #{item['first_name']}, Last name: #{item['last_name']}"
      puts "-------------"
    end
  end 


  def exists_last_name(last_name)
    @db.results_as_hash = false
    customers = @db.execute("SELECT * FROM customers")
    join_array = customers.join(' ')
    split_array = join_array.split(' ')
      
      if split_array.include?(last_name)
        @db.results_as_hash = true
        result = true 
      else 
        @db.results_as_hash = true
        result = false
      end 
    result 
  end 

  def exists_first_name(first_name, last_name)
    @db.results_as_hash = false
    customers = @db.execute("SELECT * FROM customers WHERE customers.last_name =?", [last_name])
    join_array = customers.join(' ')
    split_array = join_array.split(' ')
      
      if split_array.include?(first_name)
        @db.results_as_hash = true
        result = true 
      else 
        @db.results_as_hash = true
        result = false
      end 
    result
  end 

end 



database = Database.new


######## User interface ---start

puts "Welcome to Customer Database"

input = ""
until input == "done"
  puts "What you would like to do in the database? (type number or 'done')"
  puts "Type 1 to Insert new customer"
  puts "Type 2 to Delete existing customer"
  puts "Type 3 to Update existing customer"
  input = gets.chomp


    if input == "1"
      puts "Enter new customer's 'First Name':"
      first_name = gets.chomp
      puts "Enter new customer's 'Last name':"
      last_name = gets.chomp
      puts "Enter the new customer's 'Age':"
      age = gets.chomp.to_i
      puts "Enter the id number for the new customer's 'Favorite color':"
      database.display_colors
      favorite_color = gets.chomp.to_i
      puts "Enter the id number for the new customer's 'Favorite Movie':"
      database.display_movies
      favorite_movie = gets.chomp.to_i 
  
      database.create_customer(first_name, last_name, age, favorite_color, favorite_movie)
    elsif input == "2"
      last_name = ""
      until database.exists_last_name(last_name) == true
        puts "Enter the 'Last Name' of the existing customer you want to delete:"
        last_name = gets.chomp
      end 

      first_name = ""
      until database.exists_first_name(first_name, last_name) == true ####
        puts "Enter the 'First Name' of the existing customer you want to delete:"
        database.display_customers(last_name)
        first_name = gets.chomp
      end 


      database.delete_customer(first_name, last_name)
  
    elsif input == "3" 

      last_name = ""
      until database.exists_last_name(last_name) == true
        puts "Enter the 'Last Name' of the existing customer you want to update:"
        last_name = gets.chomp
      end 

      first_name = ""
      until database.exists_first_name(first_name, last_name) == true
        puts "Enter the 'First Name' of the existing customer you want to update:"
        database.display_customers(last_name)
        first_name = gets.chomp
      end 


      valid = ""
      until valid == true 
        puts "Type the entry for '#{first_name} #{last_name}' that you want to update?"
        puts "first name, last name, age, color, movie, or email"
        input_2 = gets.chomp 


        if input_2 == "first name"
          valid = true 
        elsif input_2 == "last name"
          valid = true 
        elsif input_2 == "age"
          valid = true
        elsif input_2 == "color"
          valid = true 
        elsif input_2 == "movie"
          valid = true 
        elsif input_2 == "email"
          valid = true
        else 
          valid = false
        end
      end 
  
  
        if input_2 == "color" 
          puts "Type the id number for the #{input_2} you would like to change to:"
          database.display_colors
          change_to = gets.chomp
        elsif input_2 == "movie"
          puts "Type the id number for the #{input_2} you would like to change to:"
          database.display_movies
          change_to = gets.chomp
        else
          puts "Type what you would like to change '#{input_2}' to:"
          change_to = gets.chomp
        end 

      database.update_customer(first_name, last_name, input_2, change_to)
    else
        puts "Please enter valid input" 
    end 

    input = gets.chomp 
end

######## User interface ---end


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




