import Foundation
import UIKit

class calculatorLogic {
    
    var number : Double
    
    init(number: Double) {
        self.number = number
    }
    
    func calcNumbers(symbol : String) -> Double? {
                  if symbol == "+/-" {
                     return number * -1
                  } else if symbol == "AC" {
                    return  0
                  } else if symbol == "%" {
                     return number * 0.01
                  }
                return nil
              }
        }

