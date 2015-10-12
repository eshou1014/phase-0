# I worked on this challenge [by myself.
# This challenge took me [1] hours.


# Pseudocode
#Input: an array of integers
#Output: Changes the integers in the array to 'fizz','buzz','fizz_buzz'
#Steps:
# 1. Create a method that takes one argument
# 2. create IF statements that will change the array if it is divisible by 3,5, and 15.
# 3. 3 = fizz, 5 = buzz, 15 = FizzBuzz
# 4. Use the each method to iterate over the array and change the values.


# Initial Solution

# def super_fizzbuzz(array)

# array.each do |change_word|
#   if change_word % 3 == 0
#     p 'Fizz'
#   elsif change_word % 5 == 0
#     p 'Buzz'
#   elsif change_word % 3 == 0 && change_word % 5 == 0
#     p 'FizzBuzz'
#   else
#     p change_word
#   end
#   end
# end




# p super_fizzbuzz([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15])

# Refactored Solution

def super_fizzbuzz(array)
  array.map { |element|
    if element % 3 == 0 && element % 5 == 0
      p element = "FizzBuzz"
    elsif element % 3 == 0
      p element = "Fizz"
    elsif element % 5 == 0
      p element = "Buzz"
    else
      p element = element
    end
  }
end




# Reflection

#This was a nice review. I forgot a lot of the syntax for Ruby because of JS but adjusting was easy because it is not as strict. This was fun and I love Ruby so much more than JS. For some reason, the tests do not work though.