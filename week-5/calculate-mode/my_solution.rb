# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, Kristie Chow ]

# I spent [4.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# => Array of numbers or strings
# What is the output? (i.e. What should the code return?)
# => An array with the most frequent values
# What are the steps needed to solve the problem?
=begin
1. Create a method that takes 1 argument
2. Create a new hash
3. Loop through each element in the array
4.If the element is there already, add a value to the key, otherwise add the element to the array.
5. Create a new array
7. Iterate through the values one by one and push keys of highest values into a new array
8.return new array
=end

# 1. Initial Solution
def mode(input)
h = Hash.new
input.each do |element|
  if h[element]
    h[element] += 1
  else
    h[element] = 1
  end
end
puts h

greatest_value = 0
mode_array = []

h.each do |key,value|
  if value >= greatest_value
    if value != greatest_value
      mode_array = []
    end
    mode_array.push(key)
    greatest_value = value

  end
end
return mode_array
end





# 3. Refactored Solution




# 4. Reflection