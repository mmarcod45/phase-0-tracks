# take a full name as an argument 
# swap the first and last name 
# change vowels to next vowel
#  change consonants to the next consonant 
#
# provide a user interface
# 



# def name(full_name)
#   vowels = ["a", "e", "i", "o", "u"]
#   lowercase_name = full_name.downcase
#   reverse_words = lowercase_name.reverse
#   split_name = reverse_words.split('')
#   split_name.each do |item|
#     if vowels.include? item 
#       item = vowels[item + 1]
# end 

# name("Marco Marin")

# lowercase_name = "marco marin"
# p split_namedd = lowercase_name.split(' ')
# p reverse_words = split_namedd.reverse



def name(full_name)
  letters = ["a", "e", "i", "o", "u", "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  #split_name = ["n", "i", "r", "a", "m", " ", "o", "c", "r", "a", "m"]#["a", "e", "o", "u"]
  
  lowercase_name = full_name.downcase
  reverse_name = lowercase_name.split(/\b/).reverse!.join('')
  #reverse_words = lowercase_name.reverse
  split_name = reverse_name.split('')
  
  agent_name = ""
  
  split_name.each do |item|
    # if item == " "
    #   p item = "t"
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
  
  # capitalize1 = agent_name.capitalize
  # p capitalize2 = capitalize1.split(/\b/).reverse!.join('')
  # p capitalize_all = capitalize2.capitalize
  #p agent_name.split(/ |\_/).map(&:capitalize).join(" ")
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

#name("Felicia Torres")
# name(input) 

################## THE WHILE LOOP BELOW ALSO WORKS ABOVE ############

agent_names = []

exit_word = "quit"
input = ""
while input != exit_word
  puts "Enter a name: (type 'quit' when done)"
  input = gets.chomp
  indiv_agent = name(input)
  agent_names << indiv_agent
end 
