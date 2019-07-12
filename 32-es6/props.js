
// Is there a shorthand way to create properties in an object literal 
// that have the the same names as variables I have in scope?
  
  
  
  const name = "Graham Troyer-Joy";
  const age = 33;
  const foodsDeepFriedAtHomeThisYear = [
    {
      name: "Shrimp Chips",
      vegan: false, 
      banana: {
        hello: true
      }
    },
    {
      name: "Pierogis",
      vegan: true
    }
  ]

  const graham = { 
    name: name,
    age: age
    foodsDeepFriedAtHomeThisYear: foodsDeepFriedAtHomeThisYear
  };
  // let's make ⬆️ this object have some props!

console.log(graham)



// Is there a way to dynamically define (or compute) property names 
// in an object literal e.g. based on the value of a variable?

  const propName = "babanam";
  const propValue = true

  const newYearsResolution = {
    body: "Write code every day",
    year: 2018,
    // could we assign attainability here instead?
  }

  // what is going on here?
  newYearsResolution[propName] = propValue

  console.log(newYearsResolution)














