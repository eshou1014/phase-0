// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Jenna Anderson

// Pseudocode
//Input: An integer
//Output: A string with commas placed every third character from the right.

//Steps:

//1. Convert integer to a string
//2. Place the string into an array
//3. Convert each character in the string to an individual string object.
//4. Reverse the string
//5. Insert comma every third character
//6. Reverse again and join everything together


// Initial Solution
// var separateComma = function(num){
//   var toString = String(num);
//     if (toString.length < 4)
//       return toString;
//     else

//       var numArray = toString.split("");
//       var reverseArray = numArray.reverse();

//       for (var counter = 3; counter < reverseArray.length; counter+=4){
//       reverseArray.splice(counter, 0 ,",")
//       };
//    var output=reverseArray.reverse().join("");
//     console.log(output);
//     return output


// };

// console.log(separateComma(1000000));



// Refactored Solution
function separateComma(num){
    var numbers = num.toString().split("");
    var reversenumbers = numbers.reverse();

      for (var counter = 3; counter < reversenumbers.length; counter+=4){
      reversenumbers.splice(counter, 0 ,",")
      };
   var output=reversenumbers.reverse().join("");
    console.log(output);
    return output


};

console.log(separateComma(1000000));



// Your Own Tests (OPTIONAL)




// Reflection

//Initially we approached the problem in about 3 separate ways before settling on the same way we did the challenge in Ruby. We were really confused on how to write the syntax to palce the commas in JavaScript.

//I learned that for loops work more efficiently in JavaScript and it is easier to write.

//I learned that JavaScript syntax is harsher than Ruby is and is less elegant. I learned that you are able to method chain just as in Ruby.

//In my Refactored Solution I just stringed a bunch of methods together in one variable. Also I took out the if statement for if the length is < 4 because it is covered in the for loop.