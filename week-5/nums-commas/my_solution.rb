# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# => The input is a positive integer
# What is the output? (i.e. What should the code return?)
# => The output is a comma-separated integer as a string
# What are the steps needed to solve the problem?
=begin
   create a METHOD called separate_comma and one ARGUMENT called number

   Write an IF statement that compares the integer to be less than 999 to return just the argument

   Create an empty CONTAINER object to hold the integer
   Create an empty CONTAINER object to hold the spacing
   Create an empty CONTAINER object to hold the counter

    Write ELSE statement that compares the integer to be GREATER THAN 999.

   Inside the ELSE, use the INSERT method to insert commas every 3 SPACES working backwards.

   Use the WHILE loop to loop while counter less than the spaces necessary to put a comma.

=end

# 1. Initial Solution
def separate_comma(number)
   if number < 1000
     return number.to_s
   else
      new_num = number.to_s
      spaces = new_num.length/3
      counter = 1
      while counter <= spaces
         comma_space = counter * -4
         new_num.insert(comma_space, ",")
         counter += 1
      end
   end
   #I'm not sure how to remove the comma at the front of the string.
   return new_num
end


# p separate_comma(100000000)


# 2. Refactored Solution(With research)
def separate_comma(number)
   if number < 1000
     return number.to_s
   else
      new_num = number.to_s
      spaces = new_num.length/3
      counter = 1
      while counter <= spaces
         comma_space = counter * -4
         new_num.insert(comma_space, ",")
         counter += 1
      end
      if new_num[0] == ","
         new_num[0] = ""
   end
   return new_num
end



# 3. Reflection