// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:
document.getElementById("release-0").className = "done";


// Release 1:
document.getElementById("release-1").style.display = 'none';



// Release 2:
document.getElementsByTagName("h1")[0].innerHTML= "I completed release 2.";



// Release 3:
document.getElementById("release-3").style.backgroundColor = "#955251";



// Release 4:
var release4 = document.getElementById("release-3");
var release3 = document.getElementById("release-0");
release4.style.fontSize = "2em";
release3.style.fontSize = "2em";



// Release 5:
var temp = document.getElementById("hidden");
document.body.appendChild(temp.content.cloneNode(true));