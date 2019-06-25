

// const potato = function(){
//   return "🥔"
// }

// console.log(potato())
// console.log(potato)
// console.log(potato())


// const whatever = [potato(), potato(), potato(), potato(), potato()]

// console.log(whatever)

const tacoButton = document.getElementById("taco")
const listOThings = document.getElementById("blobs")

// function tacoButtonClickHandler(event){
//   console.log(event)
//   const taco = document.createElement("li")
//   taco.innerText = "🌮"
//   listOThings.prepend(taco)
// }

// tacoButton.addEventListener("mouseover", tacoButtonClickHandler)



tacoButton.addEventListener("mouseover", function(event){
  console.log(event.pageX)
  const taco = document.createElement("li")
  taco.innerText = "🌮"
  taco.name = "graham"
  listOThings.prepend(taco)
})


