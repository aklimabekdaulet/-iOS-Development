
import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBOutlet weak var diceAppView: UIImageView!
    
    @IBAction func rollButtonPress(_ sender: Any) {
        let diceImages = [
            UIImage(named: "dice1"),
            UIImage(named: "dice2"),
            UIImage(named: "dice3"),
            UIImage(named: "dice4"),
            UIImage(named: "dice5"),
            UIImage(named: "dice6")
        ]
        
        diceImageView1.image = diceImages.randomElement()!
        diceImageView2.image = diceImages.randomElement()!
    }
    
}

