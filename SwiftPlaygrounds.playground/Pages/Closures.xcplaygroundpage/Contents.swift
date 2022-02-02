//: [Previous](@previous)

import Foundation
import UIKit



//Creating basic closures

let walking = {
    print("I'm walking now\n")
}

walking()

print("----\n")

//take parameter

let walkTo = { (to: String) in
    print("I'm walking to the \(to)\n")
}

walkTo("Galata")


print("----\n")

//return parameter

let closureWithReturn = { (parameter: String) -> String in

    return "This closure return this: \(parameter)\n"
    
}

let returnClosure = closureWithReturn("deneme12")
print(returnClosure)


print("----\n")


//you can return parameter without taking any parameter

let payment = { () -> Bool in
    
    print("Customer paid\n")
    return true
}

payment()


print("----\n")


//Closures as parameters
//using walking closure on line 10

func walk(action: () -> Void) {
    action()
    print("for cardio\n")
}

walk(action: walking)


print("----\n")


//Trailing closure syntax


func trailing(exaampleClosure: () -> Void) {
    print("first line ")
    exaampleClosure()
    print("third line")
}

trailing {
    print("this is closure line")
}


print("----\n")


//Closure as parameters -- accept parameters

func printSomething(action: (String) -> Void) {
    print("func print")
    action("closure print")
    print("Again func print\n")
}

printSomething { (action: String) in
    print("This line \(action)")
    
}



func study(reviseNotes: (String) -> Void) {
    let notes = "Napoleon was a short, dead dude."
    for _ in 1...10 {
        reviseNotes(notes)
    }
}
study { (notes: String) in
    print("I'm reading my notes: \(notes)")
}


print("----\n")


//Closure as parameters -- return values

func returnValues(parameter: (String) -> String) {
    print("Deneme123")
    let takeValueOf = parameter("return closure string")
    print(takeValueOf)
}

returnValues { (example: String) -> String in
    return "This is \(example)\n"
}

print("----\n")

//Shorthand

returnValues {
    "This is Shorthand example to \($0)"
}
