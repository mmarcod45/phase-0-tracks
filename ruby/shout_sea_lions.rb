# module Shout  # here, we are declaring the module
# 	def self.yell_angrily(words)
#  		words + "!!!" + " :("
#  	end
#  	def self.yelling_happily(words_2)
#  		words_2 + "!!!" + " :)"
#  	end 
# end

# p Shout.yell_angrily("I am mad")  
# p Shout.yelling_happily("I am happy")




module Shout  # here, we are declaring the module
	def hungry(sound)
		puts "You are hungry, which is why I hear: #{sound}!!!"
	end 
end 

class Dog 
	include Shout
end 

class Human
	include Shout
end 

dog = Dog.new
dog.hungry("Woof Woof")

human = Human.new
human.hungry("Grrrrrr")