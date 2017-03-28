# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

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


  def percentage_of_deaths_for_population(population)
    { 200 => 0.4, 150 => 0.3, 100 => 0.2, 50 => 0.1 }.each do |density, ratio|
      return ratio if population >= density
    end
      return 0.05
  end

  def predicted_deaths(population_density, population, state)
    number_of_deaths = (population * percentage_of_deaths_for_population(population_density)).floor
    print "#{state} will lose #{number_of_deaths} people in this outbreak"
  end

  def months(population)
    { 200 => 0.5, 150 => 1, 100 => 1.5, 50 => 2 }.each do |density, months_ratio|
      return months_ratio if population >= density 
    end 
      return 2.5
  end 

  def speed_of_spread(population_density, state)
    number_of_months = months(population_density)
    puts " and will spread across the state in #{number_of_months} months.\n\n"
  end 
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
