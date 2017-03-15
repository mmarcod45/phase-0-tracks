# Client's name
# Client's age
# Number of children
# Decor theme 
# Favorite color
# Number of rooms to be worked on
# Wants to be very involved 


##client_information = []

puts "Please answer the following questions as accurately as possible"

puts "What is the client's name?"
client_name = gets.chomp

puts "What is the client's age?"
client_age = gets.chomp 

puts "How many children does the client have?"
number_children = gets.chomp 

puts "What is the client's preferred decor theme?"
decor_theme = gets.chomp 

puts "What is the client's favorite color?"
favorite_color = gets.chomp 

puts "How many rooms does the client want designed?"
number_rooms = gets.chomp 

puts "The client wants to be involved? (yes/no)"
involvement = gets.chomp 


client_information = {
	"name" => client_name,
	"age" => client_age.to_i,
	"children" => number_children.to_i,
	"decor" => decor_theme,
	"color" => favorite_color,
	"rooms" => number_rooms.to_i,
	"participate" => involvement, 
}

puts "Which information would you like to update? (or type 'none')"

client_information.each do |type, info|
    puts type
end

type_to_change = gets.chomp #-> name

unless type_to_change == 'none' || !client_information.keys.include?(type_to_change)
#   puts "Ok, let's change #{type_to_change}!"
#   puts "The current value is #{client_information[type_to_change]} what would you like to change it to?"
	puts "What would you like to change it to?"
	updated_value = gets.chomp
	client_information[type_to_change] = updated_value
	puts "Your information for #{type_to_change} has been updated to #{client_information[type_to_change]}"
#   puts "Your information has been updated to #{client_information[type_to_change]}"
end

# loop do 
# 	puts "Which information would you like to update? (or type 'none')"
# 	input = gets.chomp 
# 	break if input == "none"
# 	if input == "decor_theme"
# #	if input == "client_name" || "client_age" || "number_children" || "decor_theme" || "favorite_color" || "number_rooms" || "involvement"
# 	puts "Type in the updated information"
# 	input_2 = gets.chomp 
# 	client_information["#{input_2}"]
# end 










