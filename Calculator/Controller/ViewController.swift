import UIKit

class ViewController: UIViewController {
    
    //MARK: - Constants
    
    private var isFinishingTipingNumber: Bool = true
   
    
     var displayValue : Double {
        get {
            guard let number = Double(displayLabel.text!) else { fatalError("Cannot conwert displayLabel.text to Double")}
            return number
        }
        set {
            displayLabel.text = String(newValue)
        }
    }

    //MARK: - IBOutlet
    
    @IBOutlet weak var displayLabel: UILabel!
    private var calculator = calculatorLogic()
    
    //MARK: - IBAction Methods
    
    @IBAction func calcButtonPressed(_ sender: UIButton)  {
        isFinishingTipingNumber = true
        
        if let calcMethod = sender.currentTitle {
            calculator.setNumber(displayValue)
            if let result = calculator.calcNumbers(symbol: calcMethod) {
                displayValue = result
            }
        }
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        if let numValue = sender.currentTitle {
            if displayLabel.text?.count != 0 {
                if isFinishingTipingNumber {
                    displayLabel.text = numValue
                    isFinishingTipingNumber = false
                } else {
                    
                    if numValue == "." {
                        let isInt = floor(displayValue) == displayValue
                        if !isInt {
                            return
                        }
                        
                        displayLabel.text = displayLabel.text! + numValue
                    }
                }
            }
        }
    }
}

