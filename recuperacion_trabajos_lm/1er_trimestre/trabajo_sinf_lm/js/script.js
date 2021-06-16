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

//js

/**funcion aclarar,oscurecer */

function aclarar(opac) {
  document.getElementById('img_script').style.opacity= opac;
}

function aclarar1(opac) {
  document.getElementById('img_script1').style.opacity= opac;
}

function aclarar2(opac) {
  document.getElementById('img_script2').style.opacity= opac;
}

function aclarar3(opac) {
  document.getElementById('img_script3').style.opacity= opac;
}