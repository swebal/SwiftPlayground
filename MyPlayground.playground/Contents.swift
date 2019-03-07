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


let composite = "Hej, \(constantString), jag är \(height) år gammal!"

let composite2 = constantString + " " + String(age)


// Arrayer

let intArray:[Int] = [23, 34, 45]

let indexValue = intArray[2] // Fungerar likadant som nästan alla språk

let stringArray = ["hej", "på", "dig"]

let stringValue = stringArray[0]


var tomArray = [Int]() // Detta skapar en TOM ARRAY
var annanTomArray:[Int] = [] // Detta är OCKSÅ en TOM ARRAY
for i in 0...4 {
    tomArray.append(i)
}

var tomDictionary = [String:String]()
var annanTomDictionary:[String:String] = [:]
tomDictionary["sträng"] = "Du"
//tomDictionary["nummer"] = 2 // Ej möjligt i en array [String]

var flexibelDictionary:[String:Any] = [:]
flexibelDictionary["sträng"] = "Du"
flexibelDictionary["nummer"] = 2 // Möjligt, eftersom strukturen tillåter det!

// Att plocka ur ett nummer från en dictionary (konvertera från Any? -> Int?)
let num:Int? = flexibelDictionary["nummer"] as? Int

// Alernativt med en if-let
if let someNum:Int = flexibelDictionary["nummer"] as? Int {
    let summa = someNum + 1 // Borde vara 3
}


// Swift Övningar 1 - Uppgift 10

//let dagar = ["måndag", "tisdag", "onsdag", "torsdag", "fredag", "lördag", "söndag"]
//let väder = ["regn", "sol", "snö", "moln"]
//var vädret2019 = [[String:String]]()
//for i in 0..<365 {
//    let dagIndex = i % dagar.count
//    let slumpIndex = arc4random_uniform(UInt32(väder.count))
//    let slumpVäder = väder[Int(slumpIndex)]
//    vädret2019.append([dagar[dagIndex]:slumpVäder])
//}
//let vädretVilkenDagSomHelst = vädret2019[34]
//print(vädretVilkenDagSomHelst)
//





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

for i in 0..<stringArray.count {
    print(stringArray[i]) // BORDE ge ett fel! :(
}


// Dictionary

let optionalDictionary: [String:String]? // Optional "array" av nyckel-värde par - Optionals kan bara skapas inuti en klass

let dictionary:[String:String] = ["nyckel1":"hej", "nyckel2":"på", "nyckel3":"dig"]

let hej = dictionary["nyckel1"] // "hej" är faktiskt en OPTIONAL

print(hej as Any)


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

let optionalArrayDictionary:[String:[Int]?]

//optionalArrayDictionary["hej"] = "På dig"


// Subklasser, init och override

class MotorFordon {
    
    var märke:String = ""
    
    init() {
        // TOM
    }
    
    init(märke:String) {
        self.märke = märke
    }
    
    func hej() {
        print("Mitt fordon")
    }
}

class LastBil : MotorFordon {
    
    var längd = 0
    
    init(längd:Int) {
        super.init(märke: "Volvo")
        self.längd = längd
    }
    
    override func hej() {
        super.hej()
        print("är en lastbil!")
    }
}

let l = LastBil(längd: 12)
l.hej()


// Struct

struct Bil {
    
    var antalMil = 4
    
    mutating func körSträcka(mil:Int) {
        antalMil += mil
    }
}


var b = Bil()
b.körSträcka(mil: 4)

func körBil(bilen:Bil) {
    var enBil = bilen
    enBil.körSträcka(mil: 5)
}

b.antalMil



// Guard

func foo(firstName:String?, lastName:String?) {
    
    // Normal
    if let first = firstName {
        if let last = lastName {
            print(first + " " + last)
        }
    }
    
    // Guard
    guard let firstName = firstName else {
        return
    }
    guard let lastName = lastName else {
        return
    }
    
    print(firstName + lastName)
}





