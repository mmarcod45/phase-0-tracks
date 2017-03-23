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
#   Print hash list 
# output: A hash grocery list with default quantity of 1 

# Method to remove an item from the list
# input: list, item 
# steps: 
# 	select item to delete using the .delete built-in method for arrays 
# output: hash with deleted item

# Method to update the quantity of an item
# input: list, item, quantity
# steps: 
#    same as previous method for adding an item. This will update the quantity
# output: hash with updated quantity for a chosen item

# Method to print a list and make it look pretty
# input: list, item, quantity
# steps:
# 	Print message to let user know what is the type of list
#   Print each item on the list displaying only the item and quantity
# output: Nicely printed grocery list



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
additional_item(grocery_list, "Lemonade", 2)
additional_item(grocery_list, "Tomatoes", 3)
additional_item(grocery_list, "Onions", 1)
additional_item(grocery_list, "Ice Cream", 4)

p grocery_list 


def remove_item(list, item) # challenge: check to see if item exists?
	list.delete(item)
end 

remove_item(grocery_list, "bread")
remove_item(grocery_list, "Lemonade")

p grocery_list


def update_item(list, item, quantity) # challenge: check to see if item exists?
	list[item] = quantity
end 

update_item(grocery_list, "water", 2)
update_item(grocery_list, "Ice Cream", 1)

p grocery_list

puts "Here are the items and quantities in your grocery list:"
grocery_list.each do |item, quantity|
  puts "#{item}: #{quantity}"
end 

# Release 4 #################################################
# 1.) What did you learn about pseudocode from working on this challenge?
	# I learned that pseudocode needs to have specific Inputs and Outputs to be able to pass Inputs as an Output of the next method. 
# 2.) What are the tradeoffs of using arrays and hashes for this challenge?
	# Using arrays will not allow us to have labeled data and hashes are not zero-indexed, making it more inconvenient than arrays to access information.
# 3.) What does a method return?
	# The input of another or the next method.
# 4.) What kind of things can you pass into methods as arguments?
	# list, item, quantity, etc. 
# 5.) How can you pass information between methods?
	# By using a class structure. If a class structure is not an option, we can make sure the output of one method can be the input of 
	# another method and make sure the output of the first method is able to be accessed by the next method to pass as an argument. 
# 6.) What concepts were solidified in this challenge, and what concepts are still confusing?
	# The concepts of methods and passing data between different methods were solidified. The bigger picture of how these methods are useful is still confusing to me.





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
