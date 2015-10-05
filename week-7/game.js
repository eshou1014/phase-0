 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Win a hand of WAR
// Goals: Beat the dealer with a higher card
// Characters: Dealer, Player
// Objects: Player(card), Dealer(card)
// Functions:
// Draw random card between 1-10
// display_card
// win_state/ lose_state

// Pseudocode
//
//create player object
//create dealer object
//create current_card object
//create game_done = false


//INTRO METHOD
//define intro function and what game is being played.
// write intro explanation to console.
// end function

/*
PLAYER CARD
define player_cards with no parameters
  create variable rand_num
  return rand_num
  print "Your card is rand_num"
end function

DEALER CARD
define dealer_cards with no parameters
  create variable dealer_num
  return dealer_num
  print "The dealer's card is dealer_cards"
end function

COMPARE
if PLAYER CARD > DEALER CARD
  print "You win!"
  game_done == true
  else
  print "You lose!"
  game_done == true
end function
*/

// Initial Code
// function players(card){
//   this.card = card;
// }

// //players
// var player = new players(Math.floor((Math.random() * 10) + 1));
// var dealer = new players(Math.floor((Math.random() * 10) + 1));
// game_done = false;

// function intro(){
//   console.log("Hello and welcome to WAR!");
//   console.log("The purpose of this game is to have a higher VALUE card.");
//   console.log("Whoever has the higher card wins! Good luck.");
// }

// function deal(){
// console.log("Your card is " + player.card + ".");
// console.log("The dealer's card is " + dealer.card + ".");
// }

// function compare(){
//   if (player.card > dealer.card){
//     return console.log("You win!");
//   }
//   else{
//     return console.log("You lose!");
//   }
// }

// intro();
// deal();
// compare();


// Refactored Code
function players(card1, card2){
  this.card1 = card1;
  this.card2 = card2;
}

//players
var player = new players(Math.floor((Math.random() * 10) + 1), Math.floor((Math.random() * 10) + 1));
var dealer = new players(Math.floor((Math.random() * 10) + 1), Math.floor((Math.random() * 10) + 1));

var player_sum = player.card1 + player.card2;
var dealer_sum = dealer.card1 + dealer.card2;
var hit = player_sum + Math.floor(Math.random() * 10) + 1;

function intro(){
  console.log("Hello and welcome to BLACKJACK!");
  console.log("The purpose of this game is to hit as close to 21 as possible.");
  console.log("Whoever has the higher pair wins! Good luck.");
}

function deal(){

console.log("Your first card is " + player.card1 + ".");
console.log("Your second card is " + player.card2 + ".");
console.log("Your total is " + player_sum + ".");
console.log("The dealer's card is " + dealer.card1 + ".");
console.log("The dealer's card is " + dealer.card2 + ".");
console.log("The dealer's total is " + dealer_sum + ".");
console.log("You must hit if your card is lower than the dealers.");

}



function compare(){
  if (player_sum > dealer_sum){
    return console.log(player_sum + " You win!");
  }
  else if (player_sum < dealer_sum){
    console.log("You must hit! Your new total is " + hit + ".");

   if(hit < dealer_sum){
    console.log("You hit..but it was not enough! You lose!");

    if(hit > dealer_sum && hit < 21){
     console.log(hit + "." + " You win!");

     if(hit > 21){
          return console.log(hit + " Ohh..you busted!");
        }
      }
    }
  }
      else{
        return console.log("You lose!");
      }
  }

intro();
deal();
compare();





// Reflection
//The most difficult challenge was figuring out what to use as a variable and how to interact it with functions.

//I learned that variables should be declared outside functions if you want to use them in every function. I also learned the importance of defining instance variables.

//Yes I used Math.random and Math.floor to get a random number between 1-10. Other than that, I just hardcoded everything.

//You can access and manipulate them by calling them such as player.card. I did this in the beginning of my program.
