import UIKit

class ViewController: UIViewController {
    private var isFinishingTipingNumber: Bool = true
    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinishingTipingNumber = true
        let number = Double(displayLabel.text!)
        
        
    
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        if let numValue = sender.currentTitle {
            if displayLabel.text?.count != 0 {
                if isFinishingTipingNumber {
                    displayLabel.text = numValue
                    isFinishingTipingNumber = false
                } else {
                    displayLabel.text = displayLabel.text! + numValue
                }
            
            }
                    
        }
    
    }

}

