import UIKit

class LunchEditViewController: UIViewController, UITextFieldDelegate {
 
    //Creates variables for each of the four text fields
    @IBOutlet weak var specialOne: UITextField!
    @IBOutlet weak var specialTwo: UITextField!
    @IBOutlet weak var vegetables: UITextField!
    @IBOutlet weak var fries: UITextField!
    
    //Creates a fries pickerView and the array that goes along with it
    let friesAnswer = ["Yes", "No"]
    var pickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Sets placeholders for each textField, aligns it, and sets tags
        //First special
        specialOne.placeholder = "Type First Special"
        specialOne.textAlignment = .center
        specialOne.tag = 1
        self.specialOne.delegate = self
        
        //Second special
        specialTwo.placeholder = "Type Second Special"
        specialTwo.textAlignment = .center
        specialTwo.tag = 2
        self.specialTwo.delegate = self

        //Today's vegetables
        vegetables.placeholder = "Type Today's Vegetables"
        vegetables.textAlignment = .center
        vegetables.tag = 3
        self.vegetables.delegate = self
        
        //Fries question prompt, additionally sets pickerView delegate and dataSource to itself
        pickerView.delegate = self
        pickerView.dataSource = self
        fries.inputView = pickerView
        fries.placeholder = "Serving Fries Today?"
        fries.textAlignment = .center
        fries.tag = 4
        self.fries.delegate = self
    }
    
    //Depending on the tag of the textField, allows the user to exit the keyboard when return is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.tag == 1 {
            return specialOne.resignFirstResponder()
        }
        else if textField.tag == 2 {
            return specialTwo.resignFirstResponder()
        }
        else if textField.tag == 3 {
            return vegetables.resignFirstResponder()
        }
        return fries.resignFirstResponder()
    }
    
    //When the user touches the screen outside of the text field, the keyboard disappears
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    //Sets information to send over when unwind segue occurs
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! LunchViewController
        if let specialOneLabel = specialOne.text {
            destinationVC.menuSpecialOne = specialOneLabel
        }
        if let specialTwoLabel = specialTwo.text {
            destinationVC.menuSpecialTwo = specialTwoLabel
        }
        if let vegetablesLabel = vegetables.text {
            destinationVC.specialVegetables = vegetablesLabel
        }
        if let friesLabel = fries.text {
            destinationVC.friesYesNo = friesLabel
        }
    }
}

extension LunchEditViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    //Creates pickerView components and makes the picked row stay up even after the pickerView disappears
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return friesAnswer.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return friesAnswer[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            fries.text = friesAnswer[row]
            fries.resignFirstResponder()
    }
}

