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