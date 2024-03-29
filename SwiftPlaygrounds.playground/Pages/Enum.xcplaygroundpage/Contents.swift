//: [Previous](@previous)

import Foundation
import UIKit


var greeting = "Hello, playground"

//Enumerations

//basic example

enum Answers {
    case correct
    case wrong
}

let answer1 = Answers.correct

enum Direction {
    case north
    case south
    case east
    case west
}

let goTo = Direction.north


//Enums with values


enum Activity {
    case stayHome
    case goOutside(where: String)
}

let activity = Activity.goOutside(where: "Central Park")


enum Weather {
    case sunny
    case windy(speed: Int)
}

let todayWeather = Weather.windy(speed: 10)


//Enum raw values

enum Months: Int {
    case January = 1
    case February
    case March
}

// Jan = 1 , Feb = 2 , March = 3


// enum switch case example
enum Tech {
    case iOS
    case frontend
    case android
    case backend
}

var whichTech:Tech = .iOS

switch whichTech {
case .iOS:
    print("You should learn swift")
case .frontend:
    print("You should learn som html and css")
case .android:
    print("you should learn kotlin")
case .backend:
    print("you should learn c#")
}
