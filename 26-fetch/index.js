

// console.log("make")


function slapDogOnTheDOM(dogJson){
  console.log(dogJson)
  const dogLi = document.createElement("li") 
  const html = `<img src="${ dogJson.message }" />`
  console.log(html)
  dogLi.innerHTML = html
  document.getElementById("dogs").append(dogLi)
}


document.addEventListener("DOMContentLoaded", function(){
  const addDogButton = document.getElementById("hello-button")
  addDogButton.addEventListener("click", function(){
    // const promise = fetch("https://dog.ceo/api/breeds/image/random")
    // promise.then(function(response){
    //   return response.json()
    // }).then(function(dogObject){
    //   console.log(dogObject)
    // })

    // console.log("make")

    fetch("https://dog.ceo/api/breeds/image/random")
      .then(response => response.json())
      .then(slapDogOnTheDOM)


    // console.log("happen")

  })
  // console.log(addDogButton)
  // console.log("fetch")
})


// setTimeout(function(){
//   console.log("hi there from line 14")
// }, 1000)


// console.log("happen")

