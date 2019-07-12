// What is the spread operator and why would I want to use it?

  const graham2018 = {
    name: "Graham",
    employer: "Access Labs",
    borough: "Brooklyn",
    shopsAtUniqloTooMuch: true,
  }

  const goodHabits = {
    shopsAtUniqloTooMuch: false,
    eatsLotsOfVegetables: true,
    sleeps8Hours: true
  }

  //can I do this in a more DRY way?
  const graham2019 = {
    name: graham2018.name,
    employer: graham2018.employer,
    borough: graham2018.borough,
    shopsAtUniqloTooMuch: goodHabits.shopsAtUniqloTooMuch,
    eatsLotsOfVegetables: goodHabits.eatsLotsOfVegetables,
    sleeps8Hours: goodHabits.sleeps8Hours,
    pets: [
      "elliott"
    ],
  }

  const newYearSameMe = {
    name: graham2018.name,
    employer: graham2018.employer,
    borough: graham2018.borough,
    shopsAtUniqloTooMuch: graham2018.shopsAtUniqloTooMuch,
  }


  console.log(graham2018)
  console.log(graham2019)
  console.log(newYearSameMe)
  console.log(newYearSameMe === newYearSameMe)
  console.log(newYearSameMe === graham2018)


// Could I do it to an array?

  const bodyParts = ["head", "shoulders", "knees", "toes"];

  const funSong = [ bodyParts[0],bodyParts[2],bodyParts[3],bodyParts[4],bodyParts[5], "knees", "toes"];

  // console.log(funSong2)
  console.log(funSong.join(" and "))
  // console.log(funSong2.join(" and "))
  


// Could I do it to the parameters of a function?


  function canTakeSixArguments(one, two, three, four, five, six) {
    console.log(one)
    console.log(two)
    console.log(three)
    console.log(four)
    console.log(five)
    console.log(six)
  }



  const extendedDanceRemix = ["knees", "toes", "head", "shoulders", "knees", "toes"];
  
  canTakeSixArguments(extendedDanceRemix[0], extendedDanceRemix[1], extendedDanceRemix[2], extendedDanceRemix[3], extendedDanceRemix[4], extendedDanceRemix[5])



function banana(numberOfClowns, clownsThatDidntFitInTheClownCar, { potato }, ...args) {
  // console.log(arguments)
  // console.log(foo, bar, baz, quux)
  console.log(potato)
  console.log(args)
}


banana(5, [], { potato: "🥔" }, "hello", "goodbye", "🤡", ...extendedDanceRemix)









