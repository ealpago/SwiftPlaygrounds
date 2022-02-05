//: [Previous](@previous)

import Foundation
import UIKit

class Heat{
    var heat:Double
    init(heat:Double){
        self.heat = heat
    }
}

    extension Heat {
        var kelvin:Double { return heat + 273.15 }
        var fahrenheit:Double {return heat + 33.8 }
    }

var newHeat = Heat(heat: 23.0)
newHeat.kelvin
newHeat.fahrenheit


extension Int {
    func toConvertString()->String{
        return "\(self) numara"
    }
}

1.toConvertString()


var time:String = "22:55"


struct TimeModel {
    var hour:Int
    var minute:Int
}
extension String {
    func time() ->TimeModel{
        var hour = 0
        var minute = 0
        
        let list = self.components(separatedBy: ":")
        //
        hour = Int(list[0]) ?? 0
        minute = Int(list[1]) ?? 1
        
        return TimeModel(hour: hour, minute: minute)
    }
}

// tupple -> (Int, Int)
let timeVariable = "22:55".time()

print("Hour:\(timeVariable.hour) , Minute:\(timeVariable.minute) ")




