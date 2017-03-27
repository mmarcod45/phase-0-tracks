class Santa 
	def initialize (gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender # these are called instance variables @gender
		@ethnicity = ethnicity
		puts "Gender: #{@gender}, Ethnicity: #{@ethnicity}"
		@age = 0 
		@reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"].shuffle
	end 

	def speak #these are Instance Methods
		puts "Ho, ho, ho! Haaaapy holidays!"
	end 

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end  
end 

santa = Santa.new("Male", "White")  # This initializes a new Instance of our Santa class
santa.speak
#santa.speak


# rand(1..20)
# Santa.new - returns a new instance of the Santa class (also called an object number) 
# Santa.new.speak -
# x = Santa.new.speak - returns a String data type 

# must be the same initialized class with different attributes


# use these notes: 
# def celebrate_birthday 
# @age + 1  
# end  

# def get_mad(reindeer_name) ??
# 	@reindeer << reindeer_ranking ??
# 	p @reindeer 
# end 





