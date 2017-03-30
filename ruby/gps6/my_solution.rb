# Virus Predictor

# I worked on this challenge with Helen Khumthong.
# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative
# require_relative is a way for the solution file to access/link the file containing the state data, in this case. 
# for require_relative, both files have to be in the same folder. Files can also be linked by using 'require'. With 'require', a relative path is needed.
# since the files might not be located in the same folder. 
require_relative 'state_data'

class VirusPredictor

  # METHOD: initialize instance attributes
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # METHOD: calls predicted_deaths and speed_of_spread methods 
  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  # KEYWORD: code below is inaccessible from outside the class
  private

  # def virus_effects(predicted_deaths, speed_of_spread)
  #   @predicted_deaths
  #   @speed_of_spread
  # end 

  # def predicted_deaths(population_density, population, state)
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


  # METHOD: calculates number_of_deaths as a percentage of population
  # based on population density 
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


#   def speed_of_spread(population_density, state) #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

# end


  # METHOD: returns speed of spread in months based on
  # population density


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

# DRIVER CODE (DRY)
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, data|
  state_predictor = VirusPredictor.new(state, data[:population_density], data[:population])
  state_predictor.virus_effects
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





