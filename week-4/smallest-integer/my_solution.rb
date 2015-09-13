# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil


=begin
  Pseudocode
  1. The input is an array of integers
  2. The output is the smallest integer in the array
  3. Create an iterator that will go through each of the array's elements and pick the smallest one.
  4. I think we can use an if statement here
=end
# Your Solution Below
def smallest_integer(list_of_nums)

  small_int = list_of_nums[0]
  list_of_nums.each do |small|
    if small < small_int
      small_int = small
    end
  end
  return small_int
end

