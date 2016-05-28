# Virus Predictor

# I worked on this challenge with: Scott Kiczula.
# We spent 2 hours on this challenge.

# EXPLANATION OF require_relative
#imports data from 'file name' in the current directory, if it is not in the current directory, will use require instead and include the entire path in quotation marks
#
require_relative 'state_data'

class VirusPredictor

# Initializes when an instance of the class is created and passes state_of_origin, population_density and populations values.
# Sets values passsed through as instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  
# Takes the instance variables created in initzlie and passes them through the prediected_deaths and method and the speed_of_spread method.

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private

# Takes the varibales population_density, population and state. Runs them through calcaulations to figure out how many deaths per state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    x = 0
    if @population_density >= 200
      x = 0.4
    elsif @population_density >= 150
      x = 0.3
    elsif @population_density >= 100
      x = 0.2
    elsif @population_density >= 50
      x = 0.1
    else
      x = 0.05
    end
    number_of_deaths = (@population * x).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Takes the variables poplation_density and state. Calculates how many months it would take for the virus to spread.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    #This is a tentative refactor:
    # speed = 3
    # counter = 200
    # until @population_density <= counter
    #   speed += 0.5
    #   counter -= 50
    # end
    speed = 0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

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



STATE_DATA.each do |key, value|
  new_instance = VirusPredictor.new(key,STATE_DATA[key][:population_density],
  STATE_DATA[key][:population])
  new_instance.virus_effects
end

#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
  #One format uses key => value format, whereas key: value hash format declares key as a symbol. 
# What does require_relative do? How is it different from require?
  #require_relative imports data from 'file name' in the current directory, if it is not in the current directory, will use require instead and include the entire path in quotation marks
# What are some ways to iterate through a hash?
  #you can use the .each method followed by a do .. end, or you can use a loop with a conditional statement regarding the key-value pairs 
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  #I noticed that the variables were already declared instance variables, so there was no need for any parameters since they were already stored
# What concept did you most solidify in this challenge?
  #The concept of refactoring and what it really means in practice