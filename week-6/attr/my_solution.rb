#Attr Methods

# I worked on this challenge [by myself

# I spent [#] hours on this challenge.

class NameData

  attr_reader :name

  def initialize
    @name = "Eric"
  end

end


class Greetings
  def initialize
    @namedata = NameData.new
  end

  def hello
    "Hello #{@namedata.name}! How wonderful to see you today."
  end
end

greet = Greetings.new
p greet.hello


# Reflection
#Release 1
#The methods are reading the age, occupation, and name. Then there are separate methods that change the age, occupation, and name to whatever they want. Then set the instance variables to those new values.

#They modify them by creating a method with an argument that is the new variable and set it equal to the instance variable. Then when they call the method, they set it to a new value.

#Release 2
#The only thing that changed was creating a new attr reader for age. This gets rid of the method that returns the @age instance variable.

#Yes this code is simpler than the last. It is more readable even outside of the class.

#Release 3
#The code has a attr_writer now. And the method call is just age now.
#The change_my_age method was replaced.
#Yes it is

#Reflect
# A reader method is one that creates a method that returns a instance variable.
#A writer method is one that sets the instance variable to a new one.
#They make coding shorter and simpler
#I think so, unless you're a newbie because it makes classes more concise and accessing the data simpler.
#How it works when you have an instance variable in the initialization method. Do you need to create the writer and reader methods separetely?
