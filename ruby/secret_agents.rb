secret_password = "marco"
new_password = ""
index = 0 
while index < secret_password.length 
  new_password[index] = secret_password[index].next
  index += 1 
end 

puts new_password


#declare a method 


new_password[index] - 1 = "#{secret_password}"

letter = "abcdefghijklmnopqrstuvwxyz".index("#{secret_password[index]}") - 1


 index = 0 
 while index < secret_password.length 
   letters = "abcdefghijklmnopqrstuvwxyz"[letter]
   index += 1 
 end 

 puts letters

#change variable name: index