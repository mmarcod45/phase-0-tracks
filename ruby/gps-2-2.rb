# # Method to create a list
# # input: string of items separated by spaces (example: "carrots apples cereal pizza")
# # steps: 
#   # Get user input - list (use driver code)
#   # set default quantity. How many items in the list  .max
#   # print the list to the console [can you use one of your other methods here?]
# # output: [what data type goes here, array or hash?] Hash

# # Method to add an item to a list
# # input: list, item name, and optional quantity
# # steps: 
# 	# Turn array into a hash - list item: Key, quantity: value
# # output: Hash

# # Method to remove an item from the list
# # input: list, item name    hash[:key]
# # steps: 
# 	# select item to delete 
# # output: hash without deleted item

# # Method to update the quantity of an item
# # input: updated hash
# # steps: hash[:item] = 'new item'
# # output: hash withou updated item

# # Method to print a list and make it look pretty
# # input: hash. (print)
# # steps:
# 	# access specific keys and values from the hash and print
# # output: printed items




# def list(item)
# 	grocery_list = []
# 	grocery_list << item
# 	quantity = [1]
# 	list_quantity = {
# 		grocery_list, quantity 
# 	} 
# end 

# puts list("milk, juice")
# grocery_list











# def list(item, quantity)
# 	grocery_list = []
# 	grocery_list << item, 1 
# 	grocery_list.split(' ')
# 	array_grocery_list = grocery_list.split(' ')

# 	hash_grocery_list = Hash.new 
# 	grocery_list.each do |item|

# # 	quantity = Hash.new 
# # 	list_quantity = {
# # 		grocery_list, quantity 
# # 	}
#     grocery_list.each do |item|
#     h = Hash.new
#     h[grocery_list[0]] = 1
#     h = Hash.new(1)
#     h["grocery_list[0]"] 
    
#     h = Hash.new { |hash, key| hash[key] = "Go Fish: #{key}" }
  
#     h[h]
#  #   quantity << grocery_list[:item][:quantity]
# end 

# puts list("milk, juice")
# #grocery_list



















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


def update_item(list, item, new_item, quantity)
	list.delete(item) 
	list[new_item] = quantity
end 

update_item(grocery_list, "oranges", "meat", 2)

p grocery_list


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













