# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Array of strings
# Output: A random generated string from the input
# Steps:
# 1. In the initialize method, create a INSTANCE variable to equal the input.
# 2. Raise an ArgumentError if the array is empty
# 3. Figure out the sides of the die by using the LENGTH method onto the array
# 4. Return the sides in the SIDES method.
# 5. In the roll method, create a empty variable to hold the random generator.
# 6. the rand generator should take a string from the array RANDOMLY and return it.

# Initial Solution

# class Die
#   def initialize(labels)
#     @labels = labels
#     if @labels == []
#       raise ArgumentError.new("Array cannot be empty")
#     end
#   end

#   def sides
#     @labels.length
#   end

#   def roll
#     random = @labels.sample
#   end
# end

# die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
# die.sides
# die.roll



# Refactored Solution


class Die
  def initialize(labels)
    @labels = labels

    if @labels.length == 0
      raise ArgumentError.new("Array cannot be empty")

    end
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
die.sides
die.roll





# Reflection
#1. The main differences were returning a string instead of an integer and the string can be Arbitrary. The only logic we needed to change was to let Ruby know that it was dealing with strings instead of numbers.
#2. It teaches you that if you make code that is simple to change, then you can change the functionality of the code very easily.
#3.I learned the 'sample' method which just picks a random item from the input.
#4. I was able to solidify my understanding of instance variables, calling methods to the class, creating a new class instance, and how classes make a nest of defined methods easy to look at and work together.