class Puppy

	def fetch(toy) 
		puts "I brought back the #{toy}!"  
		toy                               
	end

	def speak(times)
		counter = 0 
		while counter < times 
			puts "Woof!"
			counter += 1 
		end 
	end 

	def roll_over
		puts "*rolls over*"
	end 

	def dog_years(human_yrs)
 			"#{human_yrs}".to_i*7
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
	
	def initialize
		puts "Initializing new puppy instance..."
	end 
end 


duchess = Puppy.new  
# spot = Puppy.new  
# fido = Puppy.new  



# to call the methods:
duchess.fetch("ball")
duchess.speak(3)
duchess.roll_over
puts duchess.dog_years(5)
duchess.trick("fido", "snap") 



##################################


class Bike 

	def initialize 
		puts "I am a bike"
	end 

	def change_gear(number)
		puts "I am in gear #{number}"
	end

	def honk(times)
		counter = 0 
		while counter < times 
			puts "Honk!"
			counter += 1 
		end 
	end
end


#my_bike = Bike.new

#my_bike.honk(3)

 
# my_bike = Bike.new 
# p my_bike
# p Bike.new
# p Bike.new

array = []  
50.times do 
	my_bike = Bike.new 
	#p my_bike 
	my_bike.change_gear(2)
	my_bike.honk(3)
	array << my_bike
end 
p array 


array.each do |item|
	item = Bike.new
	item.change_gear(1)
	item.honk(2)
end 



















