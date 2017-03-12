
secret_password = "marco"

def encrypt(word)
	index = 0 
	while index < word.length 
	  word[index] = word[index].next
	  index += 1 
	end 
	word
end

puts encrypt(secret_password) #should this be driver test to encrypt? just change secret_password to "marco"
#secret_password = encrypt("marco") #also, uncomment this line for drvier code?

def decrypt(word)
	index = 0 
	#secret_password[index] = "#{secret_password}"
	
	#letter = "abcdefghijklmnopqrstuvwxyz".index("#{secret_password[index]}") - 1
	
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

puts decrypt(secret_password)
# use the same logic as comments on lines 12 & 13 for the driver code for decryption?

