puts "How many employees will be processed?"
number_processed = gets.chomp.to_i

current_count = number_processed 
until current_count == 0


	puts "What's your name?"
	person_name = gets.chomp 
	
	puts "How old are you?"
	age = gets.chomp.to_i
	
	puts "What year were you born?"
	year_born = gets.chomp.to_i
	
	puts "What age did you turn or will be turning this year?"
	age_turning = gets.chomp.to_i 
	
	current_year = age_turning + year_born
	
	puts "Should we order garlic bread for you?"
	garlic_bread = gets.chomp 
	
	puts "Would you like to enroll in the company's insurance?"
	insurance = gets.chomp 
	
  exit_word = "done" 
  user_input = ""

while exit_word != user_input 
	puts "What allergies do you have?"
    user_input = gets.chomp 
  if user_input == "sunshine"
    puts"Probably a vampire"
    user_input = gets.chomp
    break
  end
end 
	
	
	
	if person_name == "Drake Cula"
		puts "Definitely a vampire"
	elsif person_name == "Tu Fang"
		puts "Definitely a vampire"
	elsif current_year == 2017 && garlic_bread == "y" && insurance == "y"
		puts "Probably not a vampire"
	elsif current_year != 2017 && (garlic_bread == "n" && insurance == "n")
		puts "Almost certainly a vampire"
	elsif current_year != 2017 && (garlic_bread == "n" || insurance == "n")
		puts "Probably a vampire"
	else
		puts "Results are inconclusive"
	end

	current_count = current_count - 1 


	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end