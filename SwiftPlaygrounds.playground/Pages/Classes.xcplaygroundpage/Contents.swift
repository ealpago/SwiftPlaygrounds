import Foundation
import UIKit


//Basic class

class Animal {
    var name: String
    var sound: String

    init(name: String, sound: String) {
        self.name = name
        self.sound = sound
    }
    func makeSound(){
        print("Sound")
    }
}

var dog = Animal(name:"Dog", sound:"wof")
dog.name
dog.sound

//classes are reference type
var differentDog = dog
differentDog.name = "pitbull"
print(differentDog.name)
print(dog.name)

print("\n----\n")

//inheritance

class Cow: Animal {
    func giveMilk(){
        print("Cows give milk ")
    }
}

var cow = Cow(name:"Cow", sound:"Mö")
cow.name
cow.sound
cow.giveMilk()
cow.makeSound()

print("\n----\n")



//inheritance another example
class Personal{
    var department:String
    var exp:Int
    
    init(department:String, exp:Int){
        self.department = department
        self.exp = exp
    }
    
    func doWork(){
        print("I'm currently working \(department) department")
    }
}

class Manager: Personal{
    var teamSize:Int = 0
    
    override func doWork() {
        super.doWork()
        print("And I manage \(teamSize) people")
    }
}

var manager = Manager(department: "IT", exp: 10)
manager.teamSize = 20
manager.doWork()

print("\n----\n")


//Deinitializers

class Singer{
    var name:String?
    init(name:String){
        self.name = name
        print("\(name) is awesome person and made amazing song!")
    }
    deinit{
        print("\(name!) is no more with us")
    }
}

var barisManco = Singer(name: "Barış Manço")
barisManco = Singer(name: "Mehmet manço")


//deiniti güncelle akşam toplantıda sor******
