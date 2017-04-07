# take a full name as an argument 
# swap the first and last name 
# change vowels to next vowel
#  change consonants to the next consonant 
#
# provide a user interface
# allow user to enter multiple names (loop)
# print the secret agent names stored in a data structure




def name(full_name)
  letters = ["a", "e", "i", "o", "u", "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  
  lowercase_name = full_name.downcase
  reverse_name = lowercase_name.split(/\b/).reverse!.join('')
  split_name = reverse_name.split('')
  
  agent_name = ""
  
  split_name.each do |item|
    if item == "u"
      item = "a" # p to print
      agent_name << item
    elsif item == "z"
      item = "b" # p to print
      agent_name << item
    elsif item == " "
      item = " " # p to print
      agent_name << item
    else 
      position = letters.index(item)
      new_position = position + 1 
      item = letters[new_position] # p to print
      agent_name << item
    end 
  end 
  
  p agent_name.split.map(&:capitalize).join(' ')
  

end 

agent_names = []

until 
  puts "Enter a name: (type 'quit' when done)"
  input = gets.chomp
  break if input == "quit"
  #p name(input)
  indiv_agent = name(input)
  agent_names << indiv_agent
end 

puts "Here are your secret agent names:"
agent_names.each do |item|
  puts item 
end 

