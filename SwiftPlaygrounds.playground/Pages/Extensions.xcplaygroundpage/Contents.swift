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


