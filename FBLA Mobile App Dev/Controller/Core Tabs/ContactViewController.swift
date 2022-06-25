//
//  ContactViewController.swift
//  FBLA Mobile App Dev
//
//  Created by Amy Yang on 6/22/22.
//

import UIKit
import MessageUI

class ContactViewController: UIViewController, MFMailComposeViewControllerDelegate {

    @IBOutlet weak var teacherTextField: UITextField!
    @IBOutlet weak var questionTextField: UITextField!
    
    var pickerView = UIPickerView()
    var rowNumber = 0
    
    var teachers = ["Todd Toriello", "Emily Barkocy", "Rob Haraka", "Robert Merle", "Eugene Melvin", "Yesenia Rivera-Carney", "Jennifer Toriello", "Cheryl Giordano", "Kevin Doyle", "Keith Bigora", "Krystal Beck", "Sonya Boyer", "Kevin Kelly", "Anne Albicocco", "JeanMarie Zibit", "Susan Lazzaro", "Emma Jean Evans", "Sara Bauer", "Nicole Gentile", "Mark Hilla"]
    var teacherEmails = ["ttoriello@mhrd.org", "ebarkocy@mhrd.org", "rharaka@mhrd.org", "rmerle@mhrd.org", "emelvin@mhrd.org", "yrivera@mhrd.org", "jtoriello@mhrd.org", "cgiordano@mhrd.org", "kdoyle@mhrd.org", "kbigora@mhrd.org", "kbeck@mhrd.org", "sboyer@mhrd.org", "kkelly@mhrd.org", "aalbicocco@mhrd.org", "jzibit@mhrd.org", "slazzaro@mhrd.org", "ejevans@mhrd.org", "sbauer@mhrd.org", "ngentile@mhrd.org", "mhilla@mhrd.org"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        pickerView.tag = 1
        teacherTextField.inputView = pickerView
        teacherTextField.placeholder = "Select Staff"
        teacherTextField.textAlignment = .center
        
        questionTextField.placeholder = "Type Question Here"
        questionTextField.textAlignment = .center
    }
    
    @IBAction func submitPressed(_ sender: UIButton) {
        showMailComposer()
    }
    
    func showMailComposer() {
        guard MFMailComposeViewController.canSendMail() else {
            return
        }
        
        let composer = MFMailComposeViewController()
        composer.mailComposeDelegate = self
        composer.setToRecipients(["\(teacherEmails[rowNumber])"])
        composer.setSubject("Question For \(String(describing: teacherTextField.text))")
        composer.setMessageBody("<p>Dear \(teachers[rowNumber]),</p><p>I hope this email finds you well!</p><p>I have a question for you. \(String(describing: questionTextField.text))</p><p>Sincerely,</p>", isHTML: true)
        composer.setPreferredSendingEmailAddress("myang1220@gmail.com")
        
        present(composer, animated: true)
    }
       
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
}

extension ContactViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
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
