# Get a user/secret agent name
# lowercase first letters
# split the name (' ') then reverse 
# split again using ('') to turn into an array
# Get next vowel
# Get next consonant 
# 
# Allow the user/secret agent to type 'quit'
# Iterate through the data structure and print all data the user entered
# Type your final sentence 

def alias_name_created(original_name)
  lowercased_name = original_name.downcase 
  reversed_name = lowercased_name.reverse 
  array_split = reversed_name.split('')
  vowels = ["a", "e", "i", "o", "u"]
  consonants = "bcdfghjklmnpqrstvwxy"
  consonants = consonants.split('')

	index = 0 
  if vowels.include?("array_split[index]")
	  letter = array_split[index] 
	  vowels.index("letter")
	  new_position = vowels.index("letter") + 1 
	  new_letter = vowels[new_position]
  elsif consonants.include?("array_split[index]")
	  letter = array_split[index]
	  consonants.index("letter")
	  new_position = consonants.index("letter") + 1 
	  new_letter = consonants[new_position]
  else
    array_split[index] == "a"
end 
end 

	return array_split


p alias_name_created("Marco")





# This is an alias method that loops through the original name to change the letters
def alias_name_created(original_name)
  lowercased_name = original_name.downcase 
  reversed_name = lowercased_name.reverse 
  array_split = reversed_name.split('')
  array_split.join.capitalize
end 

p alias_name_created("Marco Marin")




















 



  













































