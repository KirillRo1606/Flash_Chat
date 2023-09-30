
import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animate(text: "⚡️FlashChat", of: titleLabel, with: 0.1)
    }
    
    
    
    
    func animate(text: String, of label: UILabel, with interval: Double) {
        titleLabel.text = ""
        var charIndex = 0.0
        for letter in text {
            Timer.scheduledTimer(withTimeInterval: interval * charIndex, repeats: false) { timer in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    }
    
    
}
    
    
    
//    @IBAction func registerPressed(_ sender: UIButton) {
//        performSegue(withIdentifier: "RegisterToApp", sender: UIButton.self)
//    }
//
//    @IBAction func logInPressed(_ sender: UIButton) {
//        performSegue(withIdentifier: "LogInToApp", sender: UIButton.self)
//    }
    
