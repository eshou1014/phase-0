# Factorial

# I worked on this challenge [with: Rosslyn].


# Your Solution Below
def factorial(number)

  count = 1
  number.times do |i|
    count = count * (i + 1)
  end
  return count

end

# first it will accept a number
# then it will use a do method to multiply that number with all the number lower than it.
# it will return the product
# then we will call the method on the number 6.