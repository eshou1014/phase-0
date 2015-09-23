# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

 array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# # attempts:
# # ============================================================

 p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

 hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# # attempts:
# # ============================================================

 p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

 nested_data = {array: ["array", {hash: "finished"}]}

# # attempts:
# # ============================================================

 p nested_data.fetch(:array).at(1).fetch(:hash)

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

 number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|inner|  inner + 5}
  else
     element + 5
  end
end

puts number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def startup(names)

  names.map! do |word|

  if word.is_a?(String)
    word + "ly"

  elsif word.is_a?(Array)
    startup(word)
   end
  end
end

p startup(startup_names)

#Reflection
=begin
To access an array inside of an array, you need to access them separately like array[0][1].

To iterate over an array you can use the kind_of?(Array) method to check if the data structure inside an array is indeed an array. If it is, then it will go inside that array and you can put a code block to whatever you want. My pair and I used the map! method destructively as well because although we were able to change the contents of the array, as soon as we called it it was the original. At first we wanted to use each, but we quickly realized that there is no destructive version for each.

We used map!, is_a?, and  kind_of? as new methods for this challenge. Map was a good option because it essentially does everything each does but with a destructive version. is_a is good because it is sure that whatever we are saying is the type of data we want. Also we used recursion a bit in the bonus challenge because we were stuck on trying to figure out how to access the inner INNER array using kind_of.
=end