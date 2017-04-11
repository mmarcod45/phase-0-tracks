class Santa

	attr_reader :ethnicity
	attr_accessor :gender, :age 

	def initialize(gender, ethnicity)
		"Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0 
	end 

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end 

	def celebrate_birthday
		@age = +1 
		puts @age 
	end 

	def get_mad_at(reindeer)
		position = @reindeer_ranking.index(reindeer)
		@reindeer_ranking.delete_at(position)
		@reindeer_ranking << reindeer
		puts @reindeer_ranking
	end

	# def gender=(updated_gender)
	# 	@gender = updated_gender 
	# end

	# def gender
	# 	@gender
	# end 

	# def age
	# 	@age
	# end 

	# def ethnicity
	# 	@ethnicity
	# end 

end 

st_nick = Santa.new("Male", "Japanese")

st_nick.speak
st_nick.eat_milk_and_cookies("Chocolate Chip")
st_nick.celebrate_birthday
st_nick.get_mad_at("Vixen")

p st_nick.gender = "Mystical Creature"
p st_nick.age
p st_nick.ethnicity
p st_nick.gender

#p st_nick.age = 3

50.times do 
	example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
	example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
	p new_santa = Santa.new(example_genders.sample, example_ethnicities.sample)
	puts "This santa's gender is #{new_santa.gender}."
	puts "This santa's ethnicity is #{new_santa.ethnicity}."
	#p age = rand(0..140)
	new_santa.age = rand(0..140)
	puts "This santa is #{new_santa.age} years old." 
	#p new_santa.age
	#p new_santa
	puts "__________________________________________"
end 





