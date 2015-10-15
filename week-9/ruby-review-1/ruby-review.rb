# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode



# Initial Solution
# def reverse_words(string)
#   words = string.split(" ")
#   words.map! do |element|
#     element.reverse
#   end
#   words.join(" ")

# end



# Refactored Solution
def reverse_words(string)
  words = string.split(" ")
  words.map! {|element| element.reverse}
  words.join(" ")

end




# Reflection
#This challenge was fun and helped me solidify my understanding of ruby methods. It was a good refreshment to the syntax of ruby after working on Javascript for 2 weeks.