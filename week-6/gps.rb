# Your Names
# 1)Eric Shou
# 2)Kristie Chow

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  if !library.has_key?("cookie") || !library.has_key?("cake") || !library.has_key?("pie")
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  #Specifies that the argument item_to_make must be one of the three food items

  serving_size = library[item_to_make]
  serving_size_mod = order_quantity % serving_size
  #Store the value of the key
  #Divides the value by the order quantity

 if serving_size_mod == 0
   return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
 else
   return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients."
  end
end


def ingredients(input)
if input == "cookie"
  return "Cookie: Butter, flour, chocolate chips, sugar, vanilla essence, eggs, baking soda"
elsif input == "cake"
  return "Cake: Butter, flour, baking chocolate, sugar, baking soda, eggs"
elsif input == "pie"
  return "Pie: Butter, flour, fruit, sugar, eggs, baking soda"
end
end


#Returns the number of servings one can make given the order quantity -if there is a remainder, this will be stated

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p ingredients("cookie")
p ingredients("cake")
p ingredients("pie")
# p serving_size_calc("THIS IS AN ERROR", 5)


#  Reflection
#I learned that naming variables is important. I also learned that spacing and knowing when to use p instead of puts is important for debugging purposes.
#We used has_key? to test a condition. I learned that we can also test if something is the opposite by using the ! in front of the condition.
#I learned that you can access a hash easily by putting the keys inside a hash name. It is as easy to access as arrays.
#Writing readable variables, accessing hashes using simple code, the difference between puts, p, and prints.