//: [Previous](@previous)

import Foundation
import UIKit
import Darwin

protocol FirstProtocol{
    var name:String { get }
    var surname:String { get set }
}

struct FirstStruct:FirstProtocol{
    var name: String
    var surname: String
}

class FirstClass:FirstProtocol{
    var name: String = "Class Name"
    var surname: String = "Class Surname"
}

let structLet = FirstStruct(name: "Emre", surname: "Alpago")
let classLet = FirstClass()
print(structLet)
print("\(classLet.name) \(classLet.surname)")


class FullName:FirstProtocol{
    var name: String
    var surname: String
    init(name:String, surname:String) {
        self.name=name
        self.surname=surname
    }
}

let myNameIs = FullName(name: "Emre", surname: "Alpago")
print("\(myNameIs.name) \(myNameIs.surname)")

print("\n-----\n")


//***

protocol InitProtocol{
    var department:String { get }
    var team:Int { get }
    init(department:String, team:Int)
}

class Work:InitProtocol{
    var department: String
    var team: Int
    required init(department: String, team: Int) {
        self.department = department
        self.team = team
    }
}

var myWork = Work(department: "iOS", team: 3)

//******

protocol FuncProtocol{
    func printFunc()
    func stringFunc() -> String
    func doubleFunc(int:Int) -> Int
}

class FuncClass:FuncProtocol{
    func printFunc() {
        print("Something")
    }
    
    func stringFunc() -> String {
        return "Hello"
    }
    
    func doubleFunc(int: Int) -> Int {
        return int
    }
}

var funcVariable = FuncClass()
funcVariable.printFunc()
funcVariable.stringFunc()
funcVariable.doubleFunc(int: 123)

print("\n-----\n")


//*****


protocol NameProtocol{
    var name:String { get }
}

protocol SurnameProtocol{
    var surname:String { get }
}

protocol FullNameProtocol:NameProtocol, SurnameProtocol{
    func fullNameReturn() -> String
}

class FullNameClass: FullNameProtocol{
    var name: String = "Mehmet"
    var surname: String = "Zeytin"
    func fullNameReturn() -> String {
        return name + surname
    }
}

let myTeamLead = FullNameClass()
myTeamLead.fullNameReturn()


//*****

protocol PowerProtocol{
    associatedtype T
}


class PowerClass<T>: PowerProtocol{
    func powerFunction(type: T){
         print(type)
    }
}

extension PowerProtocol where T == Double{
    func returnDouble(){
        print("Return Double")
    }
}

class DoubleClass:PowerClass<Double>{
    override func powerFunction(type: Double) {
        print(type)
        returnDouble()
    }
}

class StringClass:PowerClass<String>{
    override func powerFunction(type: String) {
        print(type)
    }
}

let doubleLet = DoubleClass()
doubleLet.powerFunction(type: 12.34)

print("")

let stringLet = StringClass()
stringLet.powerFunction(type: "String")

