$(document).ready(function() {
  window.addEventListener('message', function(event) {
      if (event.data.Azione === "ApriMenu") {
        var wolf = document.getElementById("formContainer");
        wolf.style.display = "block";
      }

      if (event.data.Azione === "ChiudiMenu") {
        var wolf = document.getElementById("formContainer");
        wolf.style.display = "none";
      }

      document.onkeyup = function (data) {
          if (data.which == 27) {
              var wolf = document.getElementById("formContainer");
              wolf.style.display = "none";
              $.post(`https://wolf_jobs/chiudimenu`)
          }
      };
  });
});

function boscaiolo() {
  $.post(`http://wolf_jobs/boscaiolo`)
}

function pizzaiolo() {
  $.post(`http://wolf_jobs/pizzaiolo`)
}

function postino() {
  $.post(`http://wolf_jobs/postino`)
}

function agricoltore() {
  $.post(`http://wolf_jobs/agricoltore`)
}

function macellaio() {
  $.post(`http://wolf_jobs/macellaio`)
}

function pesca() {
  $.post(`http://wolf_jobs/pesca`)
}