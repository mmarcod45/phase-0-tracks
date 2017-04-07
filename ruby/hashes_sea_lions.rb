# get the client's details
# convert to the appropriate data type
# print the entered data back 
# let user update one piece of information 
# print latest version 


#client_information = {}

puts "Please answer the following questions as accurately as possible"

puts "What is the client's full name?"
client_name = gets.chomp
#client_information["Full Name"] = client_name

puts "What is the client's age?"
client_age = gets.chomp 
#client_information["Age"] = client_age.to_i

puts "How many children does the client have?"
number_children = gets.chomp 
#client_information["Children"] = number_children.to_i

puts "What is the client's preferred decor theme?"
decor_theme = gets.chomp 
#client_information["Decor Theme"] = decor_theme

puts "What is the client's favorite color?"
favorite_color = gets.chomp 
#client_information["Favorite Color"] = favorite_color

puts "How many rooms does the client want designed?"
number_rooms = gets.chomp 
#client_information["Rooms"] = number_rooms.to_i

puts "The client wants to be involved? (yes/no)"
involvement = gets.chomp 
#client_information["Participate"] = involvement


client_information = {
	"Full Name" => client_name,
	"Age" => client_age.to_i,
	"Children" => number_children.to_i,
	"Decor Theme" => decor_theme,
	"Favorite Color" => favorite_color,
	"Rooms" => number_rooms.to_i,
	"Participate" => involvement, 
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

puts client_information