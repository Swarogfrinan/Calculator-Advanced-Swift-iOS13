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
    
    //MARK: - IBAction Methods
    
    @IBAction func calcButtonPressed(_ sender: UIButton)  {
        isFinishingTipingNumber = true
        
        if let calcMethod = sender.currentTitle {
            let calculator = calculatorLogic(number: displayValue)
            guard let result = calculator.calcNumbers(symbol: calcMethod) else { return }
            displayValue = result
        }
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        if let numValue = sender.currentTitle {
          
        }
    }
}

