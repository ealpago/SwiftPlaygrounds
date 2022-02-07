//: [Previous](@previous)

import Foundation
import UIKit

let immutableValue = 3
var mutableValue = 6
mutableValue = immutableValue
print("\(mutableValue)\n")


let (let1, let2) = (1, 2)
print("let1: \(let1) -- let2: \(let2)\n")

//Arithmetic

var addValue = mutableValue + immutableValue
var minusValue = mutableValue - immutableValue
var multipleValue = mutableValue * immutableValue
var divisionValue = mutableValue / immutableValue
var remainderValue = mutableValue % immutableValue
var five = 5
var two = 2
var anotherRemainderValue = five % two  //***********

let hello = "Hello"
let world = "World"
let helloWorld = hello + world
"Emre " + "Alpago"

//Compound Assignment
var a = 1
a += 1
a -= 1

//Comparison

333 == 333
222 != 333
333 > 222
222 < 333
223 >= 222
222 >= 222
222 <= 222

var nameIs = "Emre"

if nameIs == "Emre" {
    print("True")
} else {
    print("False")
}

//Tuples Compare

(222, "Emre") < (333, "Alpago")
(222, "Emre") > (333, "Alpago")
(222, "Emre") == (333, "Alpago")
(222, "Emre") == (222, "Emre")
//Boolen values can' compare*****


//Nil-Coalescing

var name:String?
let myName = "Emre"

var newName = name ?? "name"
var anotherName = name ?? myName
print("\n----\n")

//Closed Range

for numbers in 1...10 {
    print(numbers)
}

print("\n----\n")
//Half-Open Range

for numbers in 1..<10 {
    print(numbers)
}

print("\n----\n")

//One Side
let oneToNine = [1,2,3,4,5,6,7,8,9]

for integer in oneToNine[5...]{
    print(integer)
}

print("\n----\n")


for integer in oneToNine[...5]{
    print(integer)
}
