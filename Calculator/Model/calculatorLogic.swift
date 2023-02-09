import Foundation
import UIKit

struct calculatorLogic {
    
   private var number : Double?
    
    init(number: Double) {
        self.number = number
    }
    
    func setNumber(_ number: Double) {
    }
    
    func calcNumbers(symbol : String) -> Double? {
        if let n = number {
            if symbol == "+/-" {
                return n * -1
            } else if symbol == "AC" {
                return  0
            } else if symbol == "%" {
                return n * 0.01
            }
        }
            return nil
        }
    }
    
    func numbersPressed(symbol : String) -> Double? {
        return Double("0")
    }
}
