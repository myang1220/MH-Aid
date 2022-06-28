import UIKit

class LunchSignInViewController: UIViewController, UITextFieldDelegate {

    //Create variables to refer to later on in the code
    @IBOutlet weak var denyLabel: UILabel!
    @IBOutlet weak var signInview: UIView!
    @IBOutlet weak var pinTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Rounds the corners of the UIView
        signInview.layer.cornerRadius = 10
        
        //Sets a placeholder for the pinTextField and allows the user to click out of the keyboard
        pinTextField.placeholder = "Please Enter Pin"
        pinTextField.textAlignment = .center
        self.pinTextField.delegate = self
    }
    
    //If the user presses return, the keyboard disappears
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return pinTextField.resignFirstResponder()
    }
    
    //If the user presses the screen outside the text box, the keyboard disappears
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //Checks the entered pin when the submit button is pressed
    //If correct, segues to next view controller. If incorrect, changes label
    @IBAction func submitPressed(_ sender: Any) {
        if pinTextField.text == "12345" {
            self.performSegue(withIdentifier: "signInAuthorized", sender: self)
        }
        else {
            denyLabel.text = "Access Denied!"
        }
    }
}
