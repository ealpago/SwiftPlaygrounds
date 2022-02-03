import Foundation
import UIKit
  
struct Product {
    var price:Int
    var name:String
}

class NetworkManager {
  static let shared = NetworkManager()
  func fetch(number: Int, completion: @escaping (Product) -> Void) {
    var totalNumber = 0
    for _ in 0...9999 {
      totalNumber += number
    }
    let apple = Product(price: 100, name: "elma")
    completion(apple)
  }
}
NetworkManager().fetch(number: 5) { (item) in
    print(item.name)
}
