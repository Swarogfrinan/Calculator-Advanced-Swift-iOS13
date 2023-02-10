import Foundation
import UIKit

struct calculatorLogic {
    
    private var number : Double?
    private var intermediateCalculation : (n1: Double, calcMethod: String)?
    
    
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    
    mutating func calcNumbers(symbol : String) -> Double? {
        if let n = number {
            switch symbol {
            case "+/-" : return n * -1
            case "AC" :  return  0
            case "=" :   return n * 0.01
            default :  intermediateCalculation = (n1: n, calcMethod : symbol)
            }
        }
        return nil
    }
    
    
    private func performTwoNumCalculation(n2: Double) -> Double? {
        if let n1 = intermediateCalculation?.n1, let operation = intermediateCalculation?.calcMethod {
            switch operation {
            case   "+" : return n1 + n2
            case  "-": return n1 - n2
            case  "÷": return n1 / n2
            case  "×": return n1 * n2
            default: fatalError("The operation passed in doesnt match any of the cases")
            }
        }
        return nil
    }
}

func numbersPressed(symbol : String) -> Double? {
    return Double("0")
}

