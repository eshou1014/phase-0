# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A string of digits
# Output:  returns true or false for a number that is divisible by 10 with no remainder.
# Steps:
# 1. Create an initialization with one argument.
# 2. If it is not 16 digits than create an ARGUMENTERROR that states it.
# 3. Inside the initialization create an instance variable of the input.
# 4. Use an UNTIL method to double every digit starting from the second to last to the first digit.
# 5. create a method that uses SPLIT to break up double integer digits and sum all untouched digits with the doubled digits.
# 6. Create a method to check the output with a modular of 10. If it equals 0 then return true, else false.


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize(number)
    @num = number
    @total = 0
    if number.to_s.length != 16
      raise ArgumentError.new("Your number must be 16 digits")
    end
  end

  def double
    array_credit = []
    array_credit = @num.to_s.split('')
    array_credit.map! {|x| x.to_i}
    @num = array_credit.each_with_index.map do |x,y|

      if y % 2 == 0
        x * 2
      else
        x
      end
    end
  end

  def split_digits
    digits = []
    @num = @num.join
    digits = @num.to_s.split('')
    @num = digits.map! {|x| x.to_i}
  end



  def sum
    @num.each {|x| @total = x + @total}
    return @total
  end

  def check_card
    @total % 10 == 0
  end


end

card = CreditCard.new(4408041234567906)
p card.double
p card.split_digits
p card.sum
p card.check_card

# Reflection
#The most difficult challenge for us was figuring out how to manipulate both the index number and actual integer. After we had that figured out, it was smooth sailing for the rest of the challenge. Also something frustrating was that check_card was not passing the last rspec file even though if I print the check_card method for a bad credit card it would give false, but it always gave true in the rspec for some reason.
#We did not refactor because we felt that our code was sufficient as it is. There was no real need to change anything.
#I solidified my understanding of classes, instance variables, and manipulating arrays using their index.