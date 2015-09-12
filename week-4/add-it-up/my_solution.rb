# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Rosslyn].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of integers
# Output: Sum of the integers
# Steps to solve the problem.

  #create a method that takes 1 argument
  #Iterate over array to add all the integers together
  #

# 1. total initial solution
def total(num)
  sum = 0
  num.each do |int|
    sum = sum + int
  end
  return sum
end

# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: A string of words
# Output: A joined string of words that capitalizes the first word and adds a period at the end of the string.
# Steps to solve the problem.
  #create a method
  # join the strings into one
  # capitalize the first character

# 5. sentence_maker initial solution

def sentence_maker(str)

sentence = str.join(' ') + '.'
sentence.capitalize
end

# 6. sentence_maker refactored solution
