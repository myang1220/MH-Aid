import UIKit

class EventEditViewController: UIViewController {
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker.date = selectedDate
    }
    
    //Depending on the tag of the textField, allows the user to exit the keyboard when return is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return nameTF.resignFirstResponder()
    }
    
    //When the user touches the screen outside of the text field, the keyboard disappears
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func saveAction(_ sender: Any) {
        let newEvent = Event()
        print(eventsList.count)
        print(nameTF.text ?? "nothing here")
        print(datePicker.date)
        print(eventsList)
        newEvent.id = eventsList.count
        newEvent.name = nameTF.text
        newEvent.date = datePicker.date
        
        eventsList.append(newEvent)
        navigationController?.popViewController(animated: true)
    }
}
