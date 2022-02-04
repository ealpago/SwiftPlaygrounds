//: [Previous](@previous)

import Foundation
import UIKit


//Handling missing data

var name:String?
name = "Emre"

//unwrapping optionals

if let unwrappedName = name {
    print("his name is \(unwrappedName)")
} else{
    print("We don't know yet")
}

print("\n--------\n")

//Unwrapping guard

func sendName(_surname:String?){
    guard let srnm = _surname else {return}
    print(srnm)
}

sendName(_surname: "alpago")

print("\n--------\n")


//force unwrapping

let password = "123"
print(Int(password)!)

print("\n--------\n")

//optional chaining
class Adress{
    var aptNO:Int
    init(aptNo:Int){
        self.aptNO = aptNo
    }
}

//Optional Chaining

class Person{
    var name:String
    var home:Adress?
    
    init(name:String){
        self.name = name
    }
}

var emre = Person(name:"emre")

if let no = emre.home?.aptNO{
    print("You live No \(no)")
} else {
    print("No need this")
}
///ASK HERE-->
var mehmet = Person(name: "mehmet")
mehmet.home?.aptNO = 123
if let no1 = mehmet.home?.aptNO{
    print("You live No \(no1)")
} else {
    print("No need this")
}

//failable
print("\n--------\n")

struct Password {
    var pswrd:String

    init?(pswrd:String) {
        if pswrd.count == 6 {
            self.pswrd = pswrd
        } else {
            return nil
        }
    }
}

var newPassword = Password(pswrd: "12345678")
var otherPassword = Password(pswrd: "123456")


