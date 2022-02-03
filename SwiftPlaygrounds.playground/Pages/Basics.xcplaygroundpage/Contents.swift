//: [Previous](@previous)

import Foundation
import UIKit

var greeting = "Hello, playground"

//birth year never changes
let birthYear = 2000
//var can change like age
var age = 21

//var can change but not another type. Must be same type
age = 22
age = 23
//or
var tenYearsLaterAge = age + 10
//cannot do
// age = "22"
// age = "twentyTwo"


//declare multiple variables on a single line
var deneme1 = "deneme1", deneme2 = "deneme2", deneme3 = "deneme3"


//we can specify its type
var myAge: Int
let myBirthYear: Int
let myName: String

myAge = 21
myBirthYear = 2000
myName = "Emre"

var usingInt: Int
//cannot do
// usingInt = "we cannot do that"
usingInt = 111111

var denemeString: String
//cannot do
// deneme string = 123456
denemeString = "String"



//This is a comments
//We use this like taking note or reminder

/* we can use multiple lines for comments
 like this. */



//Convert

let pi = 3.14
let integerPi = Int(pi)
print("\(integerPi)\n")

print("--------\n")

//Booleans

let thisIsTrue = true
let thisIsFalse = false

if thisIsTrue {
    print("this means true")
} else {
    print(thisIsFalse)
}



