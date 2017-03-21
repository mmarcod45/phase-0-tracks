class Bike # Defining the rules of how to make the objects (bikes)

	def initialize # it is called whenever the new method is called 
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

array = []  # to make the objects using the blueprint above
50.times do 
	my_bike = Bike.new #these are bike 'objects: Bike.new' # reassigning my_bike after each loop
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
# a class is a blueprint. Drawing the rules for how an object operates

# class Puppy #(Puppy is the specie/class) # here we are delcaring our Puppy class. Class and end 

# 	def fetch(toy) # here we are adding / declaring methods to our Puppy class
# 		puts "I brought back the #{toy}!"  # These methods are also known as Behavior
# 		toy                                # These are called Instance Methods
# 	end

# 	def speak(times)
# 		counter = 0 
# 		while counter < times 
# 			puts "Woof!"
# 			counter += 1 
# 		end 
# 	end 

# 	def roll_over
# 		puts "*rolls over*"
# 	end 

# 	def dog_years(human_yrs)
#   		"#{human_yrs}".to_i*7
# 	end

# 	def trick(dog, command)
# 		if command == "clap"
# 			puts "#{dog} is playing dead!"
# 		elsif command == "snap"
# 			puts "#{dog} is shaking your hand!"
# 		else 
# 			puts "The dog does not understand"
# 		end 
# 	end 

# 	def initialize
# 		puts "Initializing new puppy instance..."
# 	end 
# end 

#the variable has to be declared here after the method. 
#duchess = Puppy.new  #creating new / unique instances of Puppy and saving it in a variable 
# spot = Puppy.new  # This is called an Instance of a class (or the spider)
# fido = Puppy.new  # This is called an Instance of a class (or the spider)


#a = Array.new

#to call the methods:
#duchess.fetch("ball")
#duchess.speak(3)
#duchess.roll_over
#puts duchess.dog_years(5)
#duchess.trick("fido", "snap") 



#fetch, speak, rollover are instances . 


#Notice that you can call methods on the class itself (Puppy.new, for example), or on an instance of a class (some_puppy_instance.bark). 





# class Marathon 

# 	def initialize # no paranthesis () if a method does not take any argument
# 		puts "Initializing new marathon instance..."
# 		# EX. @type = "FLAT CRUST" available in all methods below 
# 	end 
	
#   def laps(number)
# 	  puts "Runner completed #{number} laps"
# 	  number 
#   end 
  
# 	def medal(level)
#   	if level == "gold"
#   	  puts "Runner came in first place"
#   	elsif level == "silver"
#   	  puts "Runner came in second place"
#   	else
#   	  puts "Runner did not finish in a leading place"
#   	end 
# 	end 
# end 

# run = Marathon.new 


# run.laps(3)
# run.medal("gold")

# arr_inst = []

# counter = 0 
# until counter == 50
# 	instance Marathon.new
# 	arr_inst << instance
# 	counter += 1
# end 
# 	p arr_inst
# end 

# 50.times do 
# 	arr_inst << Marathon.new 
# end 
# # classes are similar to a blueprint.
# # 

# my_pizza = Pizza.new('Deep dish', 36) # this will be passed on the Initialize method and set the arguments in paranthesis () on the initialize method











