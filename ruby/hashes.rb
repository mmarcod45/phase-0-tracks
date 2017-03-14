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
	name: client_name,
	age: client_age,
	children: number_children,
	decor: decor_theme,
	color: favorite_color,
	rooms: number_rooms,
	participate: involvement, 
}

##puts "Is there any information that needs to be updated? (or type 'done')"
##updated_information = gets.chomp 

loop do 
	puts "Which information would you like to update? (or type 'done')"
	input = gets.chomp 
	break if input == "done"
#	if input == "decor_theme"
	if input == "name" || "age" || "children" || "decor" || "color" || "rooms" || "participate"
	puts "Type in the updated information"
	input_2 = gets.chomp 
	client_information["#{input_2}"]
end 








