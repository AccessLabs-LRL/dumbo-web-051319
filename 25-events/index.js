

// const potato = function(){
//   return "🥔"
// }

// console.log(potato())
// console.log(potato)
// console.log(potato())


// const whatever = [potato(), potato(), potato(), potato(), potato()]

// console.log(whatever)


// function tacoButtonClickHandler(event){
//   console.log(event)
//   const taco = document.createElement("li")
//   taco.innerText = "🌮"
//   listOThings.prepend(taco)
// }

// tacoButton.addEventListener("mouseover", tacoButtonClickHandler)

// console.log("hello from line 26")


function blobClicked(event){
  // console.log("hello from line 30")
  event.target.remove()
}

const lis = document.querySelectorAll("#blobs li")
lis.forEach(function(li){
  // console.log("hello from line 36")
  li.addEventListener("click", blobClicked)
})

const tacoButton = document.getElementById("taco")
const listOThings = document.getElementById("blobs")

// console.log("hello from line 43")


tacoButton.addEventListener("click", function(event){
  // console.log("hello from line 47")
  // console.log(event.pageX)
  const taco = document.createElement("li")
  taco.innerText = "🌮"
  taco.name = "graham"
  taco.addEventListener("click", blobClicked)
  listOThings.prepend(taco)
})

// document.querySelectorAll("*").forEach(function(element) { element.addEventListener("click", blobClicked) })




















