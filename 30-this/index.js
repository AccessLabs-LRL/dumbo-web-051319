
class ButtonThing {

  constructor(color){
    this.button = document.querySelector(".clicky");
    this.color = color
    // console.log(this) //the instance
    this.button.addEventListener("mouseover", () => {
      document.body.style.backgroundColor = this.color;
      // console.log(this)
      // console.log(this.color)
      // the button
      // undefined
      // the instance of the ButtonThing
    })

    // const introduce = () => {
    //   console.log(this)
    // }

    // const duong = {
    //   introduce: introduce
    // }

    // console.log(duong.introduce())

    const callback = function(stringy) {
      console.log(stringy)

      console.log(this)
      // this.something = stringy
      // the element of the array that we're currently iterating over
      // the array itself
      // the method foreach itself
    }


    console.dir(callback)

    ;["foo", "bar", "baz"].forEach(callback.bind("rachel")) 


  }

  // onMouseOver(){
  //   document.body.style.backgroundColor = this.color;
  //   console.log(this)
  //   console.log(this.color)
  //   // the button
  //   // undefined
  //   // the instance of the ButtonThing
  // }

}


var thing = new ButtonThing("#f00");

// console.log(this)
// const introduce = () =>  {
//   console.log(this)
//   return `HEY, it's ${ this.fullName }!`
// }

// const mazen = {
//   fullName: "Mazen Al Swar",
//   name: "Mazen",
//   introduce: introduce,
//   duong: function(){
//     console.log(this)
//   },
//   graham: function(){
//     console.log(this)
//   }
// }

// const graham = {
//   fullName: "Graham Aden Troyer-Joy",
//   name: "Graham",
//   introduce: mazen.introduce
// }

// const greg = {
//   fullName: "Greg Dwyer",
//   name: "Greg",
//   introduce: graham.introduce
// }



