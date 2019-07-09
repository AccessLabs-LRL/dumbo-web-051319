class SpiceGirl {
  
  constructor(data){
    this.name = data.name
  }

  render() {
    this.li = document.createElement("li")
    this.li.innerText = this.name
    this.li.addEventListener("click", this.clicked)
    return this.li
  }

  clicked(event) {
    event.target.remove()
  }

}