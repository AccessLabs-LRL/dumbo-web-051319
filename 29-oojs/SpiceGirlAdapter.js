class SpiceGirlAdapter {

  static getAllSpiceGirls(callback){
    // console.log(this)
    fetch("http://localhost:3000/spice-girls")
      .then(res => res.json())
      .then(callback)
  }

}