// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var mood = "great";


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var triangle = "#"
while (triangle.length <= 7) {
  console.log(triangle);
  triangle = triangle + "#";
}


// Functions

// Complete the `minimum` exercise.
var min = function(a, b){
  if (a < b)
    return a;
  else
    return b;
}
console.log(min(0, 10));
// → 0
console.log(min(0, -10));
// → -10


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Eric",
  age: 22,
  favoriteFoods: ["steak", "chicken", "spaghetti"],
  quirk: "I love to eat"
}

console.log(me.name)
console.log(me.age)
console.log(me.favoriteFoods)
// Introduction

// 1. I learned that programming before the world of programming languages, it was really difficult to program. I also learned that many programming languages have striking similarities.

// 2.Not at the moment.

// Ch. 1 Values, Types and Operator

// 1. Two similarities between JavaScript and Ruby are that their arithmetic operations are very identical. They have the same prioritization as Ruby operators. JavaScript strings are also written in between single or double quotation marks. Two differences between the two languages are that Javascript seems to have special operators such as typeof, NaN, and Infinity. It also has undefined variables null and undefined which Ruby does not have.

// Ch. 2 Program Structure

// 1. An expression is a fragment of code that produces a value.

// 2. Semicolons are used to end a statement. They are not always required.

// 3.  When it is empty.

// 4. Done

// 5. It prints to your terminal and you would use it when you need to return an output. It is very similar to p, puts, print.

// 6.

// var food = prompt("What's your favorite food?","");
// console.log("Hey! " + food + " is my favorite food too!")

// 7. The while loop is used when you want a code block to execute if the statement is TRUE. For loops are used to initialize, check, and update a loop.

// 8. I noticed that their control flow is very similar to Ruby. Their keywords are also used in Ruby and the structure in which data flows is the same.
// Ch. 3 Functions

// 1. Local variables can only be seen in the scope it has been declared in. Global variables can be used anywhere in the program.

// 2. You should use functions when you are repeating code constantly to do the same thing. It also increases readability by grouping code into chunks.

// 3. It is when you use the keyword function at the start of a statement then the variable name after it.