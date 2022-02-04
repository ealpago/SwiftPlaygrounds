//: [Previous](@previous)

import Foundation
import UIKit

//TypeCasting

class TVShows{
    var channel:String
    init(channel:String){
        self.channel = channel
    }
}

class News:TVShows{
    var anchorman:String
    init(channel:String , anchorman:String) {
        self.anchorman = anchorman
        super.init(channel: channel)
    }
}

class Series:TVShows{
    var actor:String
     init(channel:String , actor:String) {
         self.actor = actor
         super.init(channel: channel)
    }
}

let shows = [
    News(channel: "xx", anchorman: "xx"),
    Series(channel: "yy", actor: "yy")
]

for tvShows in shows {
    if tvShows is Series{
        print("This is series")
    }else if tvShows is News{
        print("This is news")
 }
}

print("\n--------\n")

//Nested Types

struct Soccer{
    enum Positions:String {
    case defense = "Defans oyuncusu",
       goalkeeper = "Kaleci",
       striker = "Forvet"
    }
}

let playerRole = Soccer.Positions.defense
let player = Soccer.Positions(rawValue: "Forvet")

switch playerRole{
case .striker:
    print("Striker block")
case .goalkeeper, .defense:
    print("Goalkeeper and defense block")
default:
    break
}

//Opaque Types


class Player{
    init(){}
}

class Defence: Player{
}
