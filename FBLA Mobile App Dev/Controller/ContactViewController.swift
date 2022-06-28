import UIKit
import MessageUI

class ContactViewController: UIViewController, MFMailComposeViewControllerDelegate, UITextFieldDelegate {

    //Create variables for each of the three text fields
    @IBOutlet weak var teacherTextField: UITextField!
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var senderName: UITextField!
    @IBOutlet weak var linkButton: UIButton!
    
    //Create a pickerView and a rowNumber variable that can be referred to when composing draft
    var pickerView = UIPickerView()
    var rowNumber = 0
    
    //Create teacher and email arrays
    var teachers = ["Todd Toriello", "Emily Barkocy", "Rob Haraka", "Robert Merle", "Eugene Melvin", "Yesenia Rivera-Carney", "Jennifer Toriello", "Cheryl Giordano", "Kevin Doyle", "Keith Bigora", "Krystal Beck", "Sonya Boyer", "Kevin Kelly", "Anne Albicocco", "JeanMarie Zibit", "Susan Lazzaro", "Emma Jean Evans", "Sara Bauer", "Nicole Gentile", "Mark Hilla"]
    var teacherEmails = ["ttoriello@mhrd.org", "ebarkocy@mhrd.org", "rharaka@mhrd.org", "rmerle@mhrd.org", "emelvin@mhrd.org", "yrivera@mhrd.org", "jtoriello@mhrd.org", "cgiordano@mhrd.org", "kdoyle@mhrd.org", "kbigora@mhrd.org", "kbeck@mhrd.org", "sboyer@mhrd.org", "kkelly@mhrd.org", "aalbicocco@mhrd.org", "jzibit@mhrd.org", "slazzaro@mhrd.org", "ejevans@mhrd.org", "sbauer@mhrd.org", "ngentile@mhrd.org", "mhilla@mhrd.org"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Create text field placeholders, align them, and set tags
        //Question text field
        questionTextField.placeholder = "Type Question Here"
        questionTextField.textAlignment = .center
        questionTextField.tag = 1
        self.questionTextField.delegate = self
        
        //Teacher text field. This also requires a connection to a pickerView
        pickerView.delegate = self
        pickerView.dataSource = self
        pickerView.tag = 1
        teacherTextField.inputView = pickerView
        teacherTextField.placeholder = "Select Staff"
        teacherTextField.textAlignment = .center
        teacherTextField.tag = 2
        self.teacherTextField.delegate = self
        
        //Sender name text field
        senderName.placeholder = "Type Sender Name"
        senderName.textAlignment = .center
        senderName.tag = 3
        self.senderName.delegate = self
        
        linkButton.addTarget(self, action: #selector(openLink), for: .touchUpInside)
    }
    
    //If let only runs the code inside if it can successfully unwrap the optional URL object
    @objc func openLink() {
        if let urlToOpen = URL(string: "https://sites.google.com/mhrd.org/mh-aid-privacy-policy-tac") {
            UIApplication.shared.open(urlToOpen, options: [:], completionHandler: nil)
        }
    }
    
    //Forces the keyboard to disappear when return is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.tag == 1 {
            return questionTextField.resignFirstResponder()
        }
        else if textField.tag == 2 {
            return teacherTextField.resignFirstResponder()
        }
        else if textField.tag == 3 {
            return senderName.resignFirstResponder()
        }
        return senderName
            .resignFirstResponder()
    }
    
    //When the user presses the screen outside of the text field, the keyboard disappears
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //Function connected to submit button that runs showMailComposer()
    @IBAction func submitPressed(_ sender: UIButton) {
        showMailComposer()
    }
    
    //Create an email draft with preset text as well as user information from the text fields
    func showMailComposer() {
        
        //If the device cannot create a MFMailComposeViewController, nothing happens
        guard MFMailComposeViewController.canSendMail() else {
            return
        }
        
        let composer = MFMailComposeViewController()
        composer.mailComposeDelegate = self
        composer.setToRecipients(["\(teacherEmails[rowNumber])"])
        composer.setSubject("Question For \(teacherTextField.text ?? "")")
        composer.setMessageBody("<p>Dear \(teachers[rowNumber]),</p><p>I hope this email finds you well!</p><p>I have a question for you. \(questionTextField.text ?? "")</p><p>Thank you so much for your help!</p><p>Sincerely, \(senderName.text ?? "")</p>", isHTML: true)
//        composer.setPreferredSendingEmailAddress("myang1220@gmail.com")
        present(composer, animated: true)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
    
    //Function connected to contact us button that runs mailToDevs()
    @IBAction func contactDevs(_ sender: Any) {
        mailToDevs()
    }
    
    //Create an email draft with preset text
    func mailToDevs() {
        
        //If the device cannot create an MFMailComposeViewController, nothing happens
        guard MFMailComposeViewController.canSendMail() else {
            return
        }
        
        let composer = MFMailComposeViewController()
        composer.mailComposeDelegate = self
        composer.setToRecipients(["myang1220@gmail.com"])
        composer.setSubject("Question For The Developers")
        composer.setMessageBody("Hello, I have a question and/or suggestion for you, and would love to hear back as soon as possible.", isHTML: false)
        present(composer, animated: true)
    }
}

extension ContactViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    //Creates a pickerView and allows the textfield to show the chosen pickerView row
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return teachers.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return teachers[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        rowNumber = row
        teacherTextField.text = teachers[row]
        teacherTextField.resignFirstResponder()
    }
}
