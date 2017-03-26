
class Santa 

 	attr_accessor :gender 
 	attr_reader :age, :ethnicity

	def initialize (gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender 
		@ethnicity = ethnicity
		puts "Gender: #{@gender}, Ethnicity: #{@ethnicity}"
		@age = 0 
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end 

	def speak 
		puts "Ho, ho, ho! Haaaapy holidays!"
	end 

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end  

	def celebrate_birthday
	  @age += 1 
	end 
	
	def get_mad_at(reindeer_name)  
		@reindeer_ranking.index(reindeer_name)
	  index = @reindeer_ranking.index(reindeer_name)
	  @reindeer_ranking << reindeer_name
	  @reindeer_ranking.delete_at(index)
	  p @reindeer_ranking 
	end 

end 

santa = Santa.new("Male", "N/A")  
#santa.speak

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   puts "There are now #{santas.length} Santa instances in the array"
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

puts "This santa turns #{santa.celebrate_birthday} this year"
santa.get_mad_at("Vixen")
santa.gender = "new new gender"

santa.age 
p santa.age

santa.ethnicity
p santa.ethnicity 

p santa

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


20.times do 
  santa = Santa.new(example_genders.sample, example_genders.sample)
  santa = rand(1..40)
end 


