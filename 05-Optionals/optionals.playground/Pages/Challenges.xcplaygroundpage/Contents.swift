//: [Previous](@previous)
 /*:
### Challenges:

 1. Write a function called `myNameIs` that takes a `Person?` as an argument and returns a `String` that introduces the person by name (e.g. `"My name is Nikolas."`). In case where the argument has no value, return a string indicating that the argument has no value: `"This is not a valid person object."` Use optional binding for the implementation.
 2. Use the `Person` class that is defined below and create a variable called `maybePerson1` of type `Person?`. Instantiate it with your own name.
 3. Create a variable called `maybePerson2` of type `Person?` and initialize it with `nil`.
 4. Test `myNameIs` by passing in `maybePerson1` and `maybePerson2` into it and observe the results.
 5. Write a second version of `myNameIs` (you can call it `myNameIs2` 😑) where you use pattern matching (i.e. the `switch` statement) to get the same functionality. Test this function with `maybePerson1` and `maybePerson2`, too.
 
 */

class Person {
  let name: String
  init(name: String) {
    self.name = name
  }
}

func myNameIs(person: Person?) -> String{
    if let personName = person?.name{
        return "My name is \(personName)."
    }
    else{
        return "This is not a valid person object."
    }
}

var maybePerson1 = Person(name: "Kaichi")
var maybePerson2: Person? = nil

myNameIs(person: maybePerson1)
myNameIs(person: maybePerson2)

func myNameIs2(person: Person?) -> String{
    switch person?.name {
    case .none:
        return "This is not a valid person object."
    case .some(let personName):
        return "My name is \(personName)."
    }
}

myNameIs2(person: maybePerson1)
myNameIs2(person: maybePerson2)
