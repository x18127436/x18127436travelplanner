var elementAdditionPosition = "beforeend";

function getTasks() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      // Add the json stuff
      let container = document.getElementById("container");
      let responses = JSON.parse(this.responseText);

      for (var i = 0; i < responses.length; i++) {
        container.insertAdjacentHTML(
          elementAdditionPosition,
          createResponse(responses[i])
        );
      }
    }
  };
  xhttp.open("GET", "https://x18127436flights.herokuapp.com/api/v1/airlines", true);
  xhttp.send();
}

window.sendForm = function (event) {
  event.preventDefault();
  var xhttp = new this.XMLHttpRequest();
  xhttp.open("POST", "https://x18127436flights.herokuapp.com/api/v1/airlines", true);
  xhttp.onload = function (event) {
    let container = document.getElementById("container");
    let response = JSON.parse(event.target.response);

    container.insertAdjacentHTML(
      elementAdditionPosition,
      createResponse(response)
    );
  };
  var formData = new this.FormData(document.getElementById("name"));
  xhttp.send(formData);
  document.getElementById("slug").value = "";
};

function createResponse(response) {
  return (
    `<div class="task" id="${response.id}" onclick="deleteResponse('${response.id}')">` +
    "[" +
    response.id +
    "]: " +
    response.task +
    "<br />" +
    "</div>"
  );
}
function deleteResponse(response_id) {
  var xhttp = new XMLHttpRequest();
  xhttp.open("DELETE", `https://x18127436flights.herokuapp.com/api/v1/airlines/${response_id}`, true);
  xhttp.onload = function () {
    let target = document.getElementById(response_id);
    target.parentNode.removeChild(target);
  };
  xhttp.send(null);
}

getTasks();



