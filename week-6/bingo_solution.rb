# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
#Input: A nested array of 5 sub arrays that create a grid of 5 rows and columns, with a random number between 0-100 non-repeating.

#Output:
# 1. Reading the bingo ball with a letter and number.
# 2. Checking where the bingo board status is with X.
# 3. Replacing an object inside an array if the number and letter match the object in the array.
# Outline:


# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Create empty container objects to hold the random letters and another to hold the random number.
  #Put the letters 'b,i,n,g,o ' into an array and shuffle them.
  #Use a Ruby method,(rand), to RANDOMIZE the numbers.

# Check the called column for the number called.
  #Iterate through the column to check if you have a match.

# If the number is in the column, replace with an 'x'
  #If the number is the same, replace the original array object with an x.

# Display a column to the console
  #To display a column, PRINT the called column destructively, so that if a match has occurred, it prints it with the X.

# Display the board to the console (prettily)
  #create a method for the display.
  #display each row of the @bingoboard's array using p so they print out a new line each time.

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def ball
#     @letter = ['b','i','n','g','o'].sample
#     @number = rand(1..100)
#     p "The ball is #{@letter},#{@number}."
#     puts ""
#     puts "B    I    N   G   O"
#     puts "____________________"
#   end

#   def check
#     #Use method tranpose to make it easier to use.
#     transpose_board = @bingo_board.transpose
#     b = transpose_board[0]
#     i = transpose_board[1]
#     n = transpose_board[2]
#     g = transpose_board[3]
#     o = transpose_board[4]

#     if @letter == 'b'
#       b.map! {|element|
#         if element == @number
#           element = 'x'
#         else
#           element
#         end}
#         p b
#         p i
#         p n
#         p g
#         p o

#     elsif @letter == 'i'
#       i.map! {|element|
#         if element == @number
#           element = 'x'
#         else
#           element
#         end}
#         p b
#         p i
#         p n
#         p g
#         p o

#     elsif @letter == 'n'
#       n.map! {|element|
#         if element == @number
#           element = 'x'
#         else
#           element
#         end}
#         p b
#         p i
#         p n
#         p g
#         p o

#     elsif @letter == 'g'
#       g.map! {|element|
#         if element == @number
#           element = 'x'
#         else
#           element
#         end}
#         p b
#         p i
#         p n
#         p g
#         p o

#     elsif @letter == 'o'
#       o.map! {|element|
#         if element == @number
#           element = 'x'
#         else
#           element
#         end}
#         p b
#         p i
#         p n
#         p g
#         p o
#     end

#   end

# end


# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def ball
    @letter = ['b','i','n','g','o'].sample
    @number = rand(1..100)
    p "The ball is #{@letter},#{@number}."
    puts ""
    puts "B    I    N   G   O"
    puts "____________________"
  end

  def check
    #Use method tranpose to make it easier to use.
    transpose_board = @bingo_board.transpose
    b = transpose_board[0]
    i = transpose_board[1]
    n = transpose_board[2]
    g = transpose_board[3]
    o = transpose_board[4]

    if @letter == 'b'
      b.map! {|element|
        if element == @number
          element = 'x'
        else
          element
        end}
        p b
        p i
        p n
        p g
        p o

    elsif @letter == 'i'
      i.map! {|element|
        if element == @number
          element = 'x'
        else
          element
        end}
        p b
        p i
        p n
        p g
        p o

    elsif @letter == 'n'
      n.map! {|element|
        if element == @number
          element = 'x'
        else
          element
        end}
        p b
        p i
        p n
        p g
        p o

    elsif @letter == 'g'
      g.map! {|element|
        if element == @number
          element = 'x'
        else
          element
        end}
        p b
        p i
        p n
        p g
        p o

    elsif @letter == 'o'
      o.map! {|element|
        if element == @number
          element = 'x'
        else
          element
        end}
        p b
        p i
        p n
        p g
        p o
    end

  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.ball
new_game.check

#Reflection
#The Pseudocode was really difficult for this challenge. I had to come back and think about this problem for about an hour and then write the Pseudocode. It was tough because I was not sure how I could break down the problem into smaller steps. I knew that I needed instance variables to use across methods, but other than that, it was difficult to wrap my head around how to replace an x on the board. I think my Pseudocode style is too technical. I generally write too much code specific language inside my Pseudocode. I think that I should try to approach Pseudocode in a different way and only use English to solve it.

#The benefits of using a class are that I can initialize a different number and letter everytime the class instance is called. This gives greater flexibility and functionality within my code. I can keep all the methods in one place and execute them all at the same time instead of individually calling them and needing extra variables. Classes are easy to read and easy to understand.

#You can access coordinates in a nested array such as "array[0][1]". This will access the first element in the outer array and the second element in the inner array. Using this type of calling can help you access arrays. Or if you have a lot of inner arrays, you can use transpose.

#I used transpose to access my array elements. Then I destructively used map! to modify the original array completely. For a bingo board, transpose is great because it can give you all the rows and columns combined on one line. While it may not be great for specific coordinates, it is very useful when you do not know which element you NEED to access at the given time.

#I determined it by asking myself which variables I would use in other methods. This gave me a sense of what I needed to use in the entire class instead of just in a single method.

#I did not refactor my solution because I felt my solution was already using methods and enumerables. The only thing I would probably need to change is the 5 print methods I use in each if statement. I did not figure out an easier way to display the board prettily to the console.