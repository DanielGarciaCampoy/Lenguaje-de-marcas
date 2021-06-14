//navbar
/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}

//general
function botonOver() {
  document.getElementById('boton').style.backgroundColor = white;
  document.getElementById('boton').style.color = rgb(238, 108, 77);
}