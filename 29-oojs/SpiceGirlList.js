class SpiceGirlList {

  constructor(){
    SpiceGirlAdapter.getAllSpiceGirls(data => {
      this.ul = document.createElement("ul")
      document.body.append(this.ul)
      // this.data = data
      this.slapSpiceGirlsOnTheDOM(data)
    })
  }

  slapSpiceGirlsOnTheDOM(spiceGirls){
    spiceGirls.forEach(spiceGirl => {
      const spice = new SpiceGirl(spiceGirl)
      this.ul.append(spice.render())
    })
  }
}