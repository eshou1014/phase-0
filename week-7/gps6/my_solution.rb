# Virus Predictor

# I worked on this challenge [by myself].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#From my understanding, require_relative is an easier way of using the require method to link another file. It allows the user to load a file that is RELATIVE to the file containing the 'require_relative statement.'
#This differs from require because the 'require' method by itself indicates a path that must be relative to your current directory.
require_relative 'state_data'

class VirusPredictor

  #Initializes 3 arguments to be used in the class.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #The method virus_effects holds and calls two other methods.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #Private method makes all methods that follow this to be unaccessible for outside objects. If I were to move it above virus_effects it would just make the virus_effects method unaccessible anywhere else. You would want to use this only when you want to protect the methods from being accessed elsewhere.

  #predicted_deaths takes the data from each State and puts them into an IF statement. Inside the if statement, if the population_density matches the if conditions, it will execute a different statement for each condition. It will then print out a string that says how many people will die inside that state within this outbreak.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #This method calculates how fast the virus is going to spread. It takes the population_density data and state as arguments and creates CONDITIONAL statements for different outcomes.
  def speed_of_spread
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

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
 #This program is initializing a new class instance for every state's data. It will create the state with the population_density and population number. Then it calls the virus effects method to calculate the speed of how fast the virus is going to spread within that state.


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, data|
  current_state = VirusPredictor.new(state, data[:population_density], data[:population])
  current_state.virus_effects
end

#=======================================================================
# Reflection Section
#The two hash syntaxes generally do the same thing except that symbols are more memory friendly and with huge amounts of data, they can reduce of memory used.
#From my understanding, require_relative is an easier way of using the require method to link another file. It allows the user to load a file that is RELATIVE to the file containing the 'require_relative statement.'
#This differs from require because the 'require' method by itself indicates a path that must be relative to your current directory.
#You can use the each and map method to iterate through a hash.
#I was unsure why they needed instance variables as arguments.
#My understanding of nested hashes and accessing those values with an each method.