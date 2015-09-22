# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: The answer which is an integer
# Output: The output would be 4 possibilities, low, high, true, or false
# Steps:
# 1. Create a INSTANCE VARIABLE to hold "answer"
# 2. Define a method 'guess' with a single argument
# 3. Check to see if the answer is correct by comparing the answer to a symbol.
# 4. If the answer is incorrect, 'guess' will output a symbol, if it is correct, it will output the 'correct'
# 5. define an instance method 'solved'
# 6. create an IF statement that checks the status of the 'guess'
# 7. if it is correct, it will return true, if not false


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer.to_i
#     @solved = false
#   end

#   def guess(guessed)
#     if guessed > @answer
#       @solved = false
#       return :high
#     elsif guessed < @answer
#       @solved = false
#       return :low
#     elsif guessed == @answer
#       @solved = true
#       return :correct
#     end
#   end

#   def solved?
#     return @solved
#   end


# end

# game = GuessingGame.new(9)
# p game.solved?
# puts game.guess(8)
# puts game.guess(10)
# p game.solved?
# puts game.guess(9)
# p game.solved?



# Refactored Solution

class GuessingGame
  def initialize(answer)

    @answer = answer

  end

  def guess(guessed)
    @guess = guessed
    if guessed > @answer
      return :high
    elsif guessed < @answer
      return :low
    elsif guessed == @answer
      return :correct

    end
  end

  def solved?
    if @guess == @answer
      return true
    else
      return false
    end
  end


end

game = GuessingGame.new(9)
p game.solved?
puts game.guess(8)
puts game.guess(10)
p game.solved?
puts game.guess(9)
p game.solved?




# Reflection
=begin
Instance variables represent everything an object can do in Ruby except that it can be used in other methods.

You want to use instance variables when assigning them a value that is not hardcoded. For example, using them with the argument of a method gives them flexibility.

Flow control is using a variety of rules to execute certain blocks of code if the condition is met. I had a little trouble in my initial solution because I did not know that I needed a boolean value that would keep track of the solved? method. I struggled a little with the way instance variables worked, but in the end it became clear how and when to use them.

I believe that they are required in this code because they are easier to read and require less memory to process. If we did not use them, we would have to assign a variable the strings "high", "low", and "correct". This makes the code more readable and easier on the machine.
=end