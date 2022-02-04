//: [Previous](@previous)

import Foundation

class Math {
    public func takeNumber(x:Int, y:Int) ->Void{
        print(plus(x: x, y: y))
        print(minus(x: x, y: y))

    }
    
    private func plus(x:Int , y:Int) ->Int{
        return x + y
    }
    
    private func minus(x:Int , y:Int) ->Int{
        return x - y
    }}

var doMath = Math()
doMath.takeNumber(x: 10, y: 5)
//we cant see doMath.plus() or doMath.minus
