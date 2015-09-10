# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# --- error -------------------------------------------------------

#{}"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => line 14
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => Not much
# 5. Where is the error in the code?
# => in the while true loop
# 6. Why did the interpreter give you this error?
# => There is no false and it can be an endless loop.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# => Line 35
# 2. What is the type of error message?
# => Undefined local variable or method.
# 3. What additional information does the interpreter provide about this type of error?
# => mainObject: NameError
# 4. Where is the error in the code?
# => in Main
# 5. Why did the interpreter give you this error?
# => Because the syntax for defining a variable/method is wrong.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# => line 50
# 2. What is the type of error message?
# => Undefined method
# 3. What additional information does the interpreter provide about this type of error?
# => mainObject NoMethodError
# 4. Where is the error in the code?
# => Inside the parentheses
# 5. Why did the interpreter give you this error?
# => Because the method is empty and undefined

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => line 65
# 2. What is the type of error message?
# => wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# =>1 for 0 ArgumentError
# 4. Where is the error in the code?
# => in cartmans_phrase
# 5. Why did the interpreter give you this error?
# => When returning the method, it is assigned an argument while the original definition does not have an argument.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# => Line 84
# 2. What is the type of error message?
# => wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# =>0 for 1 ArgumentError
# 4. Where is the error in the code?
# => When the method is called
# 5. Why did the interpreter give you this error?
# => There is no argument when the method is called



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => line 105
# 2. What is the type of error message?
# => wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# =>1 for 2 Argument Error
# 4. Where is the error in the code?
# => inside the method call
# 5. Why did the interpreter give you this error?
# => There are two arguments in the declaration but only 1 when the method is called.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => line 124
# 2. What is the type of error message?
# => String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
# => TypeError
# 4. Where is the error in the code?
# => In the *
# 5. Why did the interpreter give you this error?
# => Ruby cannot multiply 5 by a string

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => line 139
# 2. What is the type of error message?
# => divided by 0
# 3. What additional information does the interpreter provide about this type of error?
# =>ZeroDivisionError
# 4. Where is the error in the code?
# => inside the 20/0
# 5. Why did the interpreter give you this error?
# => Ruby cannot divide by 0

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => line 155
# 2. What is the type of error message?
# => cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
# =>/Users/EricShou/Desktop/DBC_Stuff/phase-0/week-4/cartmans_essay.md (LoadError)
# 4. Where is the error in the code?
# => inside the require_relative
# 5. Why did the interpreter give you this error?
# => There is no such file inside the directory.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# Understanding errors is not that tough. It gives me all the info I need to see where it is, what it is, and why it happened. The exact reason is shown and now that I have had practice in determining the causes of the errors, I will have no trouble in the future to fix my own.