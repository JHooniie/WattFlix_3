/**
 * profileUpdate.js
 */
 
 var updateImg = document.getElementById("#profile_img");
updateImg.addEventListener("click", myFunction);

function myFunction() {
  document.getElementById("demo").innerHTML = "Hello World";
}

var updateImg = document.getElementById("#profile_img");
updateImg.addEventListener("click", function() {
  document.getElementById("demo").innerHTML = "Hello World";
});