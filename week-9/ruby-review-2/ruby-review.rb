# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode



# Initial Solution
# require 'bigdecimal'
# def is_fibonacci?(num) #8
#   num = BigDecimal.new(num)
#   ps1 = Math.sqrt(5* num**2 + 4)
#   ps2 = Math.sqrt(5* num**2 - 4)
#   p ps1
#   p ps2
#   return  ps1%1 ==0 || ps2%1 == 0

# end

# def fibonacci(num_of_f) #num_of_f = index + 1
#   if num_of_f ==2
#     return 1
#   elsif num_of_f == 1
#     return 0
#   else
#     return fibonacci(num_of_f-1) + fibonacci(num_of_f-2)
#   end
# end




# Refactored Solution
require 'bigdecimal'

def is_fibonacci?(num)
  num = BigDecimal.new(num)
  ps1 = (5* num**2 + 4).sqrt(0)
  ps2 = (5* num**2 - 4).sqrt(0)
  return  ps1%1 ==0 || ps2%1 == 0
end

def fibonacci(num_of_f) #num_of_f = index + 1
  if num_of_f ==2
    return 1
  elsif num_of_f == 1
    return 0
  else
    return fibonacci(num_of_f-1) + fibonacci(num_of_f-2)
  end
end







# Reflection
#This challenge was interesting because I never had any exposure to recursion prior to this. The last test was unique in the fact that the number we were trying to test was too large and required additional research to fit it in the program.