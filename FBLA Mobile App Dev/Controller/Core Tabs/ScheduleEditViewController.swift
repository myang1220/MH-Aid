//
//  ScheduleEditViewController.swift
//  FBLA Mobile App Dev
//
//  Created by Amy Yang on 6/22/22.
//
//
import UIKit

class ScheduleEditViewController: UIViewController {
//
    @IBOutlet weak var blockOneTextField: UITextField!
    @IBOutlet weak var blockTwoTextField: UITextField!
    @IBOutlet weak var blockThreeTextField: UITextField!
    @IBOutlet weak var blockFourTextField: UITextField!
    @IBOutlet weak var blockFiveTextField: UITextField!
    @IBOutlet weak var blockSixTextField: UITextField!
    @IBOutlet weak var blockSevenTextField: UITextField!
    @IBOutlet weak var blockEightTextField: UITextField!
    
    @IBOutlet weak var gradeLevel: UITextField!

    let gradeNineClasses: Array = ["English 9 H", "World History H", "Algebra 1", "Geometry", "Algebra 2", "AP Statistics", "AP Environmental Sciences", "AP Biology", "AP Chemistry", "AP Physics 1", "AP Physics C", "AP Economics", "World Language 1", "World Language 2", "World Language 3H", "World Language 4H", "AP World Language", "Physical Education/ Health"]
    let gradeTenClasses: Array = ["English 10 H", "US History 1H", "Algebra 1", "Geometry", "Algebra 2", "AP Statistics", "AP Environmental Sciences", "AP Biology", "AP Chemistry", "AP Physics 1", "AP Physics C", "AP Economics", "World Language 1", "World Language 2", "World Language 3H", "World Language 4H", "AP World Language", "Physical Education/ Health"]
    let gradeElevenClasses: Array = ["AP Literature and Composition", "AP Language and Composition", "English 11 H", "AP Calculus AB", "AP Calculus BC", "AP US History", "Algebra 1", "Geometry", "Algebra 2", "AP Statistics", "AP Environmental Sciences", "AP Biology", "AP Chemistry", "AP Physics 1", "AP Physics C", "AP Economics", "World Language 1", "World Language 2", "World Language 3H", "World Language 4H", "AP World Language", "Physical Education/ Health"]
    let gradeTwelveClasses: Array = ["AP Literature and Composition", "AP Language and Composition", "English 12 H", "AP Calclus AB", "AP Calclus BC", "Algebra 1", "Geometry", "Algebra 2", "AP Statistics", "AP Environmental Sciences", "AP Biology", "AP Chemistry", "AP Physics 1", "AP Physics C", "AP Economics", "World Language 1", "World Language 2", "World Language 3H", "World Language 4H", "AP World Language", "Physical Education/ Health"]
    let masterClasses: Array = ["English 9 H", "World History H", "English 10 H", "US History 1H", "AP Literature and Composition", "AP Language and Composition", "English 11 H", "AP Calculus AB", "AP Calculus BC", "AP US History", "English 12 H", "Algebra 1", "Geometry", "Algebra 2", "AP Statistics", "AP Environmental Sciences", "AP Biology", "AP Chemistry", "AP Physics 1", "AP Physics C", "AP Economics", "World Language 1", "World Language 2", "World Language 3H", "World Language 4H", "AP World Language", "Physical Education/ Health"]
    
    var classesOne: Array = [""]
//    var classesTwo: Array = [""]
//    var classesThree: Array = [""]
//    var classesFour: Array = [""]
//    var classesFive: Array = [""]
//    var classesSix: Array = [""]
//    var classesSeven: Array = [""]
//    var classesEight: Array = [""]
    
    var firstPickerView = UIPickerView()
    var secondPickerView = UIPickerView()
    var thirdPickerView = UIPickerView()
    var fourthPickerView = UIPickerView()
    var fifthPickerView = UIPickerView()
    var sixthPickerView = UIPickerView()
    var seventhPickerView = UIPickerView()
    var eighthPickerView = UIPickerView()


    @IBAction func gradeEntered(_ sender: UITextField) {
        if sender.text == "9" {
            classesOne = gradeNineClasses
//            classesTwo = gradeNineClasses
//            classesThree = gradeNineClasses
//            classesFour = gradeNineClasses
//            classesFive = gradeNineClasses
//            classesSix = gradeNineClasses
//            classesSeven = gradeNineClasses
//            classesEight = gradeNineClasses
        }
        else if sender.text == "10" {
            classesOne = gradeTenClasses
//            classesTwo = gradeTenClasses
//            classesThree = gradeTenClasses
//            classesFour = gradeTenClasses
//            classesFive = gradeTenClasses
//            classesSix = gradeTenClasses
//            classesSeven = gradeTenClasses
//            classesEight = gradeTenClasses
        }
        else if sender.text == "11" {
            classesOne = gradeElevenClasses
//            classesTwo = gradeElevenClasses
//            classesThree = gradeElevenClasses
//            classesFour = gradeElevenClasses
//            classesFive = gradeElevenClasses
//            classesSix = gradeElevenClasses
//            classesSeven = gradeElevenClasses
//            classesEight = gradeElevenClasses
        }
        else if sender.text == "12" {
            classesOne = gradeTwelveClasses
//            classesTwo = gradeTwelveClasses
//            classesThree = gradeTwelveClasses
//            classesFour = gradeTwelveClasses
//            classesFive = gradeTwelveClasses
//            classesSix = gradeTwelveClasses
//            classesSeven = gradeTwelveClasses
//            classesEight = gradeTwelveClasses
        }
        else {
            classesOne = masterClasses
//            classesTwo = masterClasses
//            classesThree = masterClasses
//            classesFour = masterClasses
//            classesFive = masterClasses
//            classesSix = masterClasses
//            classesSeven = masterClasses
//            classesEight = masterClasses
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Sets placeholder for first text field and limits to number pad
        gradeLevel.placeholder = "Grade Level (#)"
        gradeLevel.keyboardType = .numberPad
        gradeLevel.textAlignment = .center
        
        //block one
        firstPickerView.delegate = self
        firstPickerView.dataSource = self
        firstPickerView.tag = 1
        blockOneTextField.inputView = firstPickerView
        blockOneTextField.placeholder = "Select Block One"
        blockOneTextField.textAlignment = .center

        //block two
        secondPickerView.delegate = self
        secondPickerView.dataSource = self
        secondPickerView.tag = 2
        blockTwoTextField.inputView = secondPickerView
        blockTwoTextField.placeholder = "Select Block Two"
        blockTwoTextField.textAlignment = .center
        
        //block three
        thirdPickerView.delegate = self
        thirdPickerView.dataSource = self
        thirdPickerView.tag = 3
        blockThreeTextField.inputView = thirdPickerView
        blockThreeTextField.placeholder = "Select Block Three"
        blockThreeTextField.textAlignment = .center

        //block four
        fourthPickerView.delegate = self
        fourthPickerView.dataSource = self
        fourthPickerView.tag = 4
        blockFourTextField.inputView = fourthPickerView
        blockFourTextField.placeholder = "Select Block Four"
        blockFourTextField.textAlignment = .center

        //block five
        fifthPickerView.delegate = self
        fifthPickerView.dataSource = self
        fifthPickerView.tag = 5
        blockFiveTextField.inputView = fifthPickerView
        blockFiveTextField.placeholder = "Select Block Five"
        blockFiveTextField.textAlignment = .center

        //block six
        sixthPickerView.delegate = self
        sixthPickerView.dataSource = self
        sixthPickerView.tag = 6
        blockSixTextField.inputView = sixthPickerView
        blockSixTextField.placeholder = "Select Block Six"
        blockSixTextField.textAlignment = .center

        //block seven
        seventhPickerView.delegate = self
        seventhPickerView.dataSource = self
        seventhPickerView.tag = 7
        blockSevenTextField.inputView = seventhPickerView
        blockSevenTextField.placeholder = "Select Block Seven"
        blockSevenTextField.textAlignment = .center

        //block eight
        eighthPickerView.delegate = self
        eighthPickerView.dataSource = self
        eighthPickerView.tag = 8
        blockEightTextField.inputView = eighthPickerView
        blockEightTextField.placeholder = "Select Block Eight"
        blockEightTextField.textAlignment = .center
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ScheduleViewController
        if let blockOne = blockOneTextField.text {
            destinationVC.blockOneClass = blockOne
        }
        if let blockTwo = blockTwoTextField.text {
            destinationVC.blockTwoClass = blockTwo
        }
        if let blockThree = blockThreeTextField.text {
            destinationVC.blockThreeClass = blockThree
        }
        if let blockFour = blockFourTextField.text {
            destinationVC.blockFourClass = blockFour
        }
        if let blockFive = blockFiveTextField.text {
            destinationVC.blockFiveClass = blockFive
        }
        if let blockSix = blockSixTextField.text {
            destinationVC.blockSixClass = blockSix
        }
        if let blockSeven = blockSevenTextField.text {
            destinationVC.blockSevenClass = blockSeven
        }
        if let blockEight = blockEightTextField.text {
            destinationVC.blockEightClass = blockEight
        }
    }
}
//
extension ScheduleEditViewController: UIPickerViewDelegate, UIPickerViewDataSource {

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        if pickerView.tag == 1 {
//            return classesOne.count
//        }
//        else if pickerView.tag == 2 {
//            return classesTwo.count
//        }
//        else if pickerView.tag == 3 {
//            return classesThree.count
//        }
//        else if pickerView.tag == 4 {
//            return classesFour.count
//        }
//        else if pickerView.tag == 5 {
//            return classesFive.count
//        }
//        else if pickerView.tag == 6 {
//            return classesSix.count
//        }
//        else if pickerView.tag == 7 {
//            return classesSeven.count
//        }
//        else {
            return classesOne.count
//        }
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        if pickerView.tag == 1 {
//            return classesOne[row]
//        }
//        else if pickerView.tag == 2 {
//            return classesTwo[row]
//        }
//        else if pickerView.tag == 3 {
//            return classesThree[row]
//        }
//        else if pickerView.tag == 4 {
//            return classesFour[row]
//        }
//        else if pickerView.tag == 5 {
//            return classesFive[row]
//        }
//        else if pickerView.tag == 6 {
//            return classesSix[row]
//        }
//        else if pickerView.tag == 7 {
//            return classesSeven[row]
//        }
//        else {
            return classesOne[row]
//        }
        
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component : Int) {
        if pickerView.tag == 1 {
            blockOneTextField.text = classesOne[row]
            blockOneTextField.resignFirstResponder()
        }
        else if pickerView.tag == 2 {
            blockTwoTextField.text = classesOne[row]
            blockTwoTextField.resignFirstResponder()
        }
        else if pickerView.tag == 3 {
            blockThreeTextField.text = classesOne[row]
            blockThreeTextField.resignFirstResponder()
        }
        else if pickerView.tag == 4 {
            blockFourTextField.text = classesOne[row]
            blockFourTextField.resignFirstResponder()
        }
        else if pickerView.tag == 5 {
            blockFiveTextField.text = classesOne[row]
            blockFiveTextField.resignFirstResponder()
        }
        else if pickerView.tag == 6 {
            blockSixTextField.text = classesOne[row]
            blockSixTextField.resignFirstResponder()
        }
        else if pickerView.tag == 7 {
            blockSevenTextField.text = classesOne[row]
            blockSevenTextField.resignFirstResponder()
        }
        else {
            blockEightTextField.text = classesOne[row]
            blockEightTextField.resignFirstResponder()
        }
    }
    
}
