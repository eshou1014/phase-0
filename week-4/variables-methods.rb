puts 'Hey! You look cool.'
puts 'Whats your first name?'
first_name = gets.chomp
puts 'What about your middle name?'
middle_name = gets.chomp
puts 'And your last name?'
last_name = gets.chomp
puts 'Awesome! So you\'re full name is ' + first_name + ' ' + middle_name + ' ' + last_name + '? What a nice name.'

puts ' '

puts 'Hey what is your favorite number?'
num = gets.chomp.to_i
better = num + 1
puts 'That\'s a cool number, but ' + better.to_s + ' is better!'

=begin

1. To define a local variable you "Assign" it a value using the = sign.
2. To define a method you use the def whatevername to define a method.
3. A local variable stores one piece of information while a method assigns blocks of code to an object.
4. ruby program_name
5. rspec rspec_name
6. None of it was confusing. Everything made sense.

https://github.com/eshou1014/phase-0/blob/master/week-4/math/my_solution.rb
https://github.com/eshou1014/phase-0/blob/master/week-4/address/my_solution.rb

=end