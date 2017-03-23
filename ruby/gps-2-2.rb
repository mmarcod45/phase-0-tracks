# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
#   Get user input - list (use driver code)
#   Push into a new array then create a new hash while setting a default quantity
#   Set default quantity. How many items in the list.
#   print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] Hash will be the output 

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: 
# 	Turn array into a hash - list item: Key, quantity: value
# output: Hash

# Method to remove an item from the list
# input: list, item name    hash[:key]
# steps: 
# 	select item to delete 
# output: hash without deleted item

# Method to update the quantity of an item
# input: updated hash
# steps: hash[:item] = 'new item'
# output: hash withou updated item

# Method to print a list and make it look pretty
# input: hash. (print)
# steps:
# 	access specific keys and values from the hash and print
# output: printed items



def list(item)
	array_grocery_list = item.split #making it into an array here

	p array_grocery_list
	
	hash_grocery_list = Hash.new  #making it into a hash here
  array_grocery_list.each do |item|
    hash_grocery_list[item] = 1 #adding items to the new hash here: left of the equal sign is the Key and to the right is the Value
  end 
  hash_grocery_list 
end 

grocery_list = list("apples water bread")

# p list("apples water bread") #can be passed as arguments to a method




def additional_item(list, item, quantity)
	 list[item] = quantity 
end 

additional_item(grocery_list, "juice", 1)

p grocery_list 


def remove_item(list, item)
	list.delete(item)
end 

remove_item(grocery_list, "bread")

p grocery_list


def update_item(list, item, new_item, quantity)  # update quantity here, not item. Finish Release 4 below 
	list.delete(item) 
	list[new_item] = quantity
end 

update_item(grocery_list, "oranges", "meat", 2)

p grocery_list

puts "Here are the items and quantities in your grocery list:"
grocery_list.each do |item, quantity|
  puts "#{item}: #{quantity}"
end 

# Release 4 #################################################
# What did you learn about pseudocode from working on this challenge?
	# I learned pseudocode needs to have specific Inputs and Outputs to be able to pass Inputs as an Output of the next method. 
# What are the tradeoffs of using arrays and hashes for this challenge?
	# Using arrays will not allow us to have labeled data and hashes 
# What does a method return?
# What kind of things can you pass into methods as arguments?
# How can you pass information between methods?
# What concepts were solidified in this challenge, and what concepts are still confusing?





# Notes #####################################################
# def update_item(list, item, new_item, quantity)
#   list.find_index([item, current_quantity])
#   index = list.find_index([item, current_quantity])
# 	list.delete(item)
# 	list[index][new_item] = quantity
# end 


# what is the input and output

# think of what is needed as an input (above, we needed a hash)
# is the output something that needs to live on the outside of the method?
#  input - what info is needed for this method ? What info do I have for this method
#
#for pseudocode: do Input and Output
