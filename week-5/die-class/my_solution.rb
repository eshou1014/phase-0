# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: The amount of sides
# Output: The random number between the sides
# Steps: Initializes the sides as an instance variable.
         # In the sides method, set sides to be equal to 6.
         # Create an ArgumentError that plays if we pass a side that is less than 1
         #In the roll method, use the rand method to generate a random number between 1-6.
         #Create a class instance.
         #Call the roll method with the class instance and pass a number.


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     @sides = sides
#     if @sides < 1
#       raise ArgumentError.new("Needs to be bigger than 1")
#     end
#   end

#   def sides
#     @sides
#   end

#   def roll
#     @rand = rand(@sides) + 1
#   end
# end

# die = Die.new(6)
# die.sides
# die.roll

# 3. Refactored Solution
class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
      raise ArgumentError.new("Needs to be bigger than 1")
    end
  end

  def sides
    @sides
  end

  def roll
    @rand = rand(1..@sides)
  end
end

die = Die.new(6)
die.sides
die.roll






# 4. Reflection
=begin
An ArgumentError is when an argument for a certain function is wrong but instead of letting Ruby tell you, you give your own explanation.

I used the rand method to set a range between 1 through the number of sides.
There wasn't much challenge in this. It was pretty straightforward and intuitive.

Using a Ruby class helps keep a lot of ruby method definitions in one place.
It makes the code a lot easier to read and can perform a great deal of functionality.

The instance variable differs from the local because it does not hard code the value onto an object. It is whatever the user passes in.

An instance variable can be used with the argument of a method definition.
=end