//PseudoCode
//1. Create a function that prints out a factorial for any number as its input.
//2. Use a for loop to increment the count and add it to the result.
//3. Define a variable to hold the total.


//Initial Solution
// function factorial(num){
// var total = 1;
// for(i = 1; i <= num; i++){
//   total *= i
//   console.log(total)
// }
// };

// factorial(5);

//Refactored Solution
function factorial(num)
{
    // If num is 0, its factorial is 1.
    // Else, call the recursive procedure
    if (num == 0) {
        return 1;
    }else {
        return (num * factorial(num - 1));
    }
}

console.log(factorial(5));

//Reflect

//I solidified my understanding of for loops in Javascript. I was also introduced to recursion in Javascript.

//The most difficult part of this challenge was figuring out how to multiply the total to your iterator.

//Yes, in the Refactored Solution I looked into Javascript recursion to solve the problem.

//It was different but using the loops to make it work was the same.