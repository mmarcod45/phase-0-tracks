# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
 # separate entries with split built-in method (array)
 # iterate through the array to put items into a new hash
  # set default quantity as the value for each key
  # print the list to the console [can you use one of your other methods here?]
# output: hash of the items with key and default value

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
 # take the list. Add the name as a key and quantity as a value
# output: return updated list as a hash

# Method to remove an item from the list
# input: list, item name
# steps: 
 # take the list. Remove the key/value pair with a built-in method
# output: return updated list as a hash

# Method to update the quantity of an item
# input: list, item, quantity
# steps:
 # take the list. Choose the key and set the new quantity as the value
# output: list with the updated key/value pair

# Method to print a list and make it look pretty
# input: list
# steps:
 # iterate through the hash to print the items as key and quantities and value
# output: nicely printed list

#--- METHODS 
def create_list(items, quantity=1)
 item_array = items.split(' ')
 item_hash = {}
 item_array.each do |items|
  item_hash[items] = quantity
  end 
 p item_hash # p will both print and return # puts will print but will not return. It will return nil.
end 

def add_item(list, item, quantity=1)
 list[item] = quantity
end 

def remove_item(list, item)
  list.delete(item)
end

def update_quantity(list, item, quantity)
  list[item] = quantity
end

def print_list(list)
  puts "----------------"
  puts "Here is your list:"
  list.each do |item, quantity|
  puts "#{item}: #{quantity}" 
  end
  puts "-----------------"
end


# - DRIVER CODE
new_list = create_list("carrots apples cereal pizza")
add_item(new_list, "Lemonade", 2)
add_item(new_list, "Tomatoes", 3)
add_item(new_list, "Onions")
add_item(new_list, "Ice Cream", 4)
remove_item(new_list, "Lemonade")
update_quantity(new_list,"Ice Cream", 1)
p new_list
print_list(new_list)

# Release 4 #################################################
# 1.) What did you learn about pseudocode from working on this challenge?
	# I learned that pseudocode needs to have specific Inputs and Outputs to be able to pass Inputs as an Output of the next method. Pseudocode helps to have a clear
	# direction before doing the actual coding. 
# 2.) What are the tradeoffs of using arrays and hashes for this challenge?
	# Using arrays will not allow us to have labeled data and hashes are not zero-indexed, making it more inconvenient to access information from a hash.
# 3.) What does a method return?
	# In this challenge, the method sometimes returns the input of the next method. 
# 4.) What kind of things can you pass into methods as arguments?
	# list, item, quantity, etc. 
# 5.) How can you pass information between methods?
	# By using a class structure. If a class structure is not an option, we can make sure the output of one method can be the input of 
	# another method and make sure the output of the first method is able to be accessed by the next method to pass as an argument. Data can be set to a variable to help access the data.
# 6.) What concepts were solidified in this challenge, and what concepts are still confusing?
	# The concepts of methods and passing data between different methods were solidified. 




