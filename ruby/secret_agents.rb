def encrypt(word)
  index = 0 
  while index < word.length 
  if word[index]=="z"
  word[index] = "a"
  else
  word[index] = word[index].next
  end

  index += 1 
  end 
  word
end

def decrypt(word)
  index = 0 


 alphabet = "abcdefghijklmnopqrstuvwxyz"
  while index < word.length 
  letter = word[index]
  position = alphabet.index(letter)
  new_position = position - 1 
  word[index] = alphabet[new_position]
  index += 1 
  end 
  word
end 

puts "Would you like to encrypt or decrypt a password?"
user_input = gets.chomp 


if user_input == "encrypt"
  puts "Type in the password?"
  code_word = gets.chomp 
  puts encrypt(code_word)
elsif user_input == "decrypt"
  puts "Type in the password?"
  code_word = gets.chomp 
  puts decrypt(code_word)
else
  puts "Invalid input"
end   