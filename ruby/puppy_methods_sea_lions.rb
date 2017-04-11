class Puppy

	def initialize
		puts "Initializing new puppy instance ..."
	end 

	def fetch(toy) 
		puts "I brought back the #{toy}!"  
		toy                               
	end

	def speak(number)
		number.times { puts "Woof!" }
	end

	def roll_over
		puts "*rolls over*"
	end 

	def dog_years(human_years)
		puts human_years * 7
	end

	def trick(dog, command)
		if command == "clap"
			puts "#{dog} is playing dead!"
		elsif command == "snap"
			puts "#{dog} is shaking your hand!"
		else 
			puts "The dog does not understand"
		end 
	end 

end 

fido = Puppy.new

fido.fetch("ball")
fido.speak(4)
fido.roll_over
fido.dog_years(4)
fido.trick("Fido", "clap")

##################

class Bike

	def initialize
		puts "Initializing new bike instance ..."
	end 


	def change_gear(gear)
		puts "You are in gear #{gear}"
	end

	def bell(number)
		number.times { puts "Ding-ding!"}
	end 

end 

bicycle = Bike.new

bicycle.change_gear(4)
bicycle.bell(3)

bike_instances = []
counter = 0 
while counter < 50
	#bicycle = Bike.new
	bike_instances << bicycle = Bike.new
	counter += 1
end 

p bike_instances


bike_instances.each do |instance|
	instance = Bike.new
	instance.change_gear(4)
	instance.bell(3)
end 






