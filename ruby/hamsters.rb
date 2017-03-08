puts "Is the hamster a good candidate? (y/n)"
candidate = gets.chomp

if candidate == "y"
  good_candidate = true
else
  good_candidate = false
end

puts "What is the hamster's name?"
name = gets.chomp

puts "What is the volume level?"
volume = gets.chomp

puts "What is the fur color?"
color = gets.chomp 

puts "What is the estimated age?"
age = gets.strip

if age.empty?
  age = nil
else
  age = age.to_i
end

if good_candidate 
  puts "The hamster is a good candidate. The hamster's name is #{name}. The volume level is #{volume}. The color is #{color}. The estimated age is #{age}."
else 
  puts "The hamster is not a good candidate. The hamster's name is #{name}. The volume level is #{volume}. The color is #{color}. The estimated age is #{age}."
end
