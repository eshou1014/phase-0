// JavaScript Olympics

// I paired [with: Julian Lesse] on this challenge.

// This challenge took me [2] hours.


// Warm Up
var athlete1 = {name:"Bob" , event:"cool event" };
var athlete2 = {name:"Jim" , event:"other event" };
var athlete3 = {name:"Jane" , event:"event thing" };



// Bulk Up

var olympics = [athlete1, athlete2, athlete3];

var addWin = function(athletes){
    for(i=0; i < athletes.length; i++){
       athletes[i].win = function(){
        console.log(this.name + " won " + this.event + ".");
        }
      }
    };

addWin(olympics);
athlete1.win();


// Jumble your words

function string_reverse(string){
  array = string.split("");
  array.reverse();
  string = array.join("");
  return string;
}

console.log(string_reverse("test"));


// 2,4,6,8
function isEven(num) {
return (num % 2 == 0);
}
function even(array){
return array.filter(isEven);
}
console.log(even([1,2,3,4,5,6]));

// "We built this city"
function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection
//1. My understanding of contructors, arrays, and iterating with loops.
//2.constructor functions are in my opinion, the same as classes in Ruby. They hold objects and create a new instance of it when a new constructor is instantiated. Then you can assign it values when you do.
//3.They are different from Ruby classes because you have to give it arguments when defining the function and create instances inside the function.