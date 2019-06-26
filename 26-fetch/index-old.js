
function slapItOnTheDom(data){
  const imageTag = document.createElement("img")
  imageTag.src = data.message
  const liTag = document.createElement("li")
  liTag.appendChild(imageTag)
  const ul = document.querySelector(".js-dogs")
  ul.appendChild(liTag)
}

function buttonClicked(){
  fetch("https://dog.ceo/api/breeds/image/random")
    .then(response => response.json())
    .then(slapItOnTheDom)
}


document.addEventListener("DOMContentLoaded", function(){
  var button = document.getElementById("hello-button")
  button.addEventListener("click", buttonClicked)
})




