# Create an empty hash
# Create an add method that updates quantity to the list
# Create a remove method that removes item from the list
#IF item exists, then remove
#ELSE it doesn't exist
#Set a quantity to an object or an item
#Print the list

#With Celeen

# def grocery_list
#   Hash.new{}
# end


# def add(item, quantity, list)

#   if list[item].nil?
#     list[item] = quantity
#   end
#   p list

# end
# new_list = {'apples': 2}
# p add("Fruit", 5, new_list)
# #add("meat",5)


# On our own
grocery_list = {
  Lemonade: 4,
  }

puts "Would you like to add a grocery item?"
puts "Would you like to update the quantity of a grocery item?"
puts "Would you like to remove a grocery item?"

choice = gets.chomp.downcase

case choice
when "add"
  puts "What grocery item do you want to add?"
  item = gets.chomp
  if grocery_list[item].nil?
    puts "What is the quantity of that item?"
    quantity = gets.chomp
    grocery_list[item] = quantity.to_i

end
when "update"

  puts "What item do you want to update?"
  item = gets.chomp

    puts "What is the new quantity?"
    quantity = gets.chomp
    grocery_list[item.to_sym] = quantity.to_i
when "remove"
  puts "What item do you want to delete?"
  item = gets.chomp
  grocery_list.delete(item.to_sym)

end