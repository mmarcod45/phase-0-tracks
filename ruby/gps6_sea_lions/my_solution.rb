# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

# require relative is used to access information from an entire file within the same folder/directory.
# require is similar to require relative but files do not have to be in the same folder. # 'load' can be used to load info into a file.
# STATE_DATA is considered to be a constant variable. All letters are uppercase. It is accessible using driver code as long as require_relative is there. 
  # to access it within the class scope, it needs to be passed in on initiation 

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @number_of_deaths = ""
  end

# takes arguments so that those arguments are set as instance variables to be accessible throughout the class


  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  # it combines predicted_deaths and speed_of_spread into one method call. Two instance methods are called using one method. Allows to call two methods at the same time on an instance of a class.  
  # this allows to concatenate two strings

  private

  # the private method allows for instance methods to not be accessible outside the class definition but can still be accessed within the class.

  # def predicted_deaths
  #   # predicted deaths is solely based on population density
  #   if @population_density >= 200
  #     number_of_deaths = (@population * 0.4).floor
  #   elsif @population_density >= 150
  #     number_of_deaths = (@population * 0.3).floor
  #   elsif @population_density >= 100
  #     number_of_deaths = (@population * 0.2).floor
  #   elsif @population_density >= 50
  #     number_of_deaths = (@population * 0.1).floor
  #   else
  #     number_of_deaths = (@population * 0.05).floor
  #   end

  #   print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  # end

  # def predicted_deaths
  #   density = { 200 => 0.4, 150 => 0.3, 100 => 0.2, 50 => 0.1 }
  #   density.each do |density, ratio|
  #     if @population_density >= density
  #       @number_of_deaths = (@population * ratio).floor
  #     else 
  #       @number_of_deaths = (@population * 0.05).floor
  #     end 
  #   end 
  #   print "#{@state} will lose #{@number_of_deaths} people in this outbreak"
  # end 

  def percentage_of_deaths
  { 200 => 0.4, 150 => 0.3, 100 => 0.2, 50 => 0.1 }.each do |density, ratio|
    return ratio if @population_density >= density
  end
    return 0.05
  end

  def predicted_deaths
    number_of_deaths = (@population * percentage_of_deaths).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end 

  # def predicted_deaths
  #   number = ((((@population_density * 100) / 500).floor / 10).floor) / 10 
  #   number = 0.4 if number > 0.4 
  #   number = 0.05 if number < 0.05
  #   number_of_deaths = (@population * number).floor
  #   print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  # end 



  # this method takes three arguments. It assigns number of predicted deaths based on a portion the state population and takes population density into account.
  # the percentage is derived by diving the maximum population density of the range by the number 500.

  # def speed_of_spread #in months
  #   # We are still perfecting our formula here. The speed is also affected
  #   # by additional factors we haven't added into this functionality.
  #   speed = 0.0

  #   if @population_density >= 200
  #     speed += 0.5
  #   elsif @population_density >= 150
  #     speed += 1
  #   elsif @population_density >= 100
  #     speed += 1.5
  #   elsif @population_density >= 50
  #     speed += 2
  #   else
  #     speed += 2.5
  #   end

  #   puts " and will spread across the state in #{speed} months.\n\n" # \n\n instructs Ruby to print a new line

  # end

  def months
  { 200 => 0.5, 150 => 1, 100 => 1.5, 50 => 2 }.each do |density, months_ratio|
    return months_ratio if @population_density >= density 
  end 
    return 2.5
  end 

  def speed_of_spread
    number_of_months = months 
    puts " and will spread across the state in #{number_of_months} months.\n\n"
  end

  # takes two arguments. This method gives back the number of months it will take for the outbreak to reach a specific number of people given in predicted_deaths.
  # assigns number of months based on the population density. The higher the density the shorter amount of time for the outbreak to spread. 
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


STATE_DATA.each do |key, value|
  state = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
  state.virus_effects
end 


#=======================================================================
# Reflection Section

# 1.) What are the differences between the two different hash syntaxes shown in the state_data file?
  # the outter hash has a hash rocket and has the Key, Value. The inner hash, which is the Value of the outter hash, does not have the the hash rocket
  # but also has the Key, Value. The inner hash has integers, which makes it more readable to set it up this way.
# 2.) What does require_relative do? How is it different from require?
  # require_relative is a way for the solution file to access/link the file containing the state data, in this case. 
  # for require_relative, both files have to be in the same folder. Files can also be linked by using 'require'. With 'require', a relative path is needed.
  # since the files might not be located in the same folder. 
# 3.) What are some ways to iterate through a hash?
  # Ways to iterate through a hash are with a while loop and with an each/do method. 
# 4.) When refactoring virus_effects, what stood out to you about the variables, if anything?
  # What stood out the most to me is that there is no need to have arguments in each and can just access them using instance variables at initialize. 
  # This helped to make the virus_effects method and other methods more concise (more DRY!).
# 5.) What concept did you most solidify in this challenge?
  # the concepts of private, require_relative, require, and the meaning of DRY.