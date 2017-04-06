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

lowercase_name = "marco marin"
p split_namedd = lowercase_name.split(' ')
p reverse_words = split_namedd.reverse



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
      p item = "a"
      agent_name << item
    elsif item == "z"
      p item = "b"
      agent_name << item
    elsif item == " "
      p item = " "
      agent_name << item
    else 
      position = letters.index(item)
      new_position = position + 1 
      p item = letters[new_position]
      agent_name << item
    end 
  end 
  
  p agent_name.split.map(&:capitalize).join(' ')
  
  # capitalize1 = agent_name.capitalize
  # p capitalize2 = capitalize1.split(/\b/).reverse!.join('')
  # p capitalize_all = capitalize2.capitalize
  #p agent_name.split(/ |\_/).map(&:capitalize).join(" ")
end 

name("Felicia Torres")


















 



  













































