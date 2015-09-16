# Pad an Array

# I worked on this challenge [with: Marcel Galang]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

#input
#minimum size array

#output
#new array with pad value up to the minimum size

#steps
#1. Create an IF statement that returns the array IF the minimum size is less than or equal to the array.
#2. Create another IF statement that returns the array if min_size is equal to 0
#3. Create an empty container object for the new padded array
#4. Push value to array until min siz is met



# # 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   # Your code here
#   difference = min_size - array.length
#   if difference <= 0
#     return array
#   else
#     difference.times do
#       array << value
#     end
#   end

#   return array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   newer_arr = Array.new(array)
#   difference = min_size - array.length
#   if difference <= 0
#     return newer_arr
#   else
#     difference.times do
#       newer_arr << value
#     end
#   end

#   return newer_arr

# end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here
  difference = min_size - array.length
  if difference <= 0
    return array
  else
    difference.times do
      array.push(value)
    end
  end

  return array
end

def pad(array, min_size, value = nil) #non-destructive
  newer_arr = Array.new(array)
  difference = min_size - array.length
  if difference <= 0
    return newer_arr
  else
    difference.times do
      newer_arr.push(value)
    end
  end

  return newer_arr

end


# 4. Reflection
# 1. Yes, although some of our original logic was off.

# 2.We were able to translate most of the logic into code. However, when we did our Initial Solution it failed 7 out of 8 tests. One success that we had was that we were actually very close to working code but some of the logic was off so the whole thing seemed to fail.

# 3. It was not successful at all.

# 4. Yes we used the push method instead of <<

# 5. It is readable. I think it's still a bit messy but overall I am happy with it.

# 6. The difference between destructive and non-destructive methods are that destructive should change the original input and can never have the same answer before the change while non-destructive should CREATE A NEW OBJECT to hold the changed input so that you can go back to the original if you need to.