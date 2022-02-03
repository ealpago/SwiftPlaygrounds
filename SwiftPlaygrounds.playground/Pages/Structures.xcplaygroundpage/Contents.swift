//: [Previous](@previous)

import Foundation
import UIKit
import Darwin

//Basic Struct

struct Person {
    var surname:String
    var age:Int
    
}

var emre = Person(surname: "Alpago", age: 21)
print(emre.surname)
print(emre.age)

print("\n----\n")

//Structs are value type
var emreButOlder = emre
emreButOlder.age = 35
print(emre.age)
print(emreButOlder.age)



//Obsevers

struct DonationBar {
    var donation:Int {
        didSet {
            print("xxx donated \(donation)$ ")
        }
    }
}
var donation = DonationBar(donation: 0)
donation.donation = 10
donation.donation = 20
donation.donation = 50


print("\n----\n")

//Methods

struct BMI {
    var weight:Int
    var height:Int
    
    func bmıCalculator() -> Int {
       return weight / (height*height)
    }
}

let bmı = BMI(weight: 100, height: 10)
print(bmı.bmıCalculator())


print("\n----\n")


//Mutating

struct PersonName {
    var name:String
    
    mutating func makeAnonymous() {
           name = "Anonymous"
       }
}

var ahmet = PersonName(name: "ahmet")
print(ahmet.name)
ahmet.makeAnonymous()
print(ahmet.name)

print("\n----\n")

//Struct init
struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "example"
print(user.username)

print("\n----\n")

//lazy properties

struct Family{
    init(){
        print("Welcome to family")
    }
}

struct NewBorn{
    var name:String
    var family = Family()
    init(name:String){
        self.name = name
    }
}

var baby = NewBorn(name: "baby")

print("\n----\n")

//Computed Properties
struct PersonWantAlcohol{
    var name:String
    var age:Int
    
    var canTakeAlcohol:String{
        if age >= 18{
            return "\(name) can take alcohol"
        } else {
            return "cannot"
        }
    }
}

let deneme = PersonWantAlcohol(name: "Emre", age: 22)
print(deneme.canTakeAlcohol)

//get set??????

