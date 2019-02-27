//: Playground - noun: a place where people can play

import UIKit

var string = "Hello, playground" // Variable string

let constantString = "Hi there" // Non-varying string
// constantString = "Ny sträng" // Ej möjligt att tilldela let nya värden

var optionalString: String? = "Hej på dig"

let length:Int? = optionalString?.count
//print(length)

if (string != nil) { // Alltid sant
}

if (string == nil) { // Alltid falskt
}

if (optionalString != nil) { // Sant eller falskt
    print(optionalString!) // Måste "unwrap" ett optional objekt med !
}

if let someString = optionalString {
    let otherLength = someString.count
}

if let _ = optionalString { // _ kan inte användas, se det som "void"
    print("Optional string is not null, but we don't want to use it anyway!")
}


// Nummer

let age = 23 // Int

var height = 123.2 // Double

let sum = Double(age) + height // Kan inte addera Int och Double - Måste typecasta!


// Arrayer

let intArray:[Int] = [23, 34, 45]

let indexValue = intArray[2] // Fungerar likadant som nästan alla språk

let stringArray = ["hej", "på", "dig"]

let stringValue = stringArray[0]


// Loopar

for _ in stringArray {
    // Går in i loopen så många gånger som vår array är lång men tar inte med sig en variabel
//    print(_) // Fungerar inte!
}

// for (NSString *str in stringArray) {

for str in stringArray {
    print(str)
}

// for (int i=0; i<array.count; i++) {

for i in 0...5 { // where i%3==0 // Hoppa var 3e
    print(i)
}

for i in 0...stringArray.count {
    print(i)
}


// Dictionary

let optionalDictionary: [String:String]? // Optional "array" av nyckel-värde par - Optionals kan bara skapas inuti en klass

let dictionary = ["nyckel1":"hej", "nyckel2":"på", "nyckel3":"dig"]

let hej = dictionary["nyckel1"]




// Klasser

class 🙂 {
    
}

let smiley = 🙂()

class Person {
    
    var namn = "Markus"
    var ålder = 39
    var 😃 = "Glad"
    private var humör = "🤬"
    
    private func printMyName() {
        print(namn)
    }
    
    func printThis(stringToPrint:String) {
        print(stringToPrint)
    }
    
    func returnNewString(addString:String) -> String {
        return "Hej"
    }
}

let p = Person()
p.😃 = "Hej"
//p.printMyName() // Numera privat - kan inte nås "utifrån"!
p.printThis(stringToPrint: "hej")

let newString = p.returnNewString(addString: "hallo")

let personDictionary = ["Markus":p] // [String:Person]


