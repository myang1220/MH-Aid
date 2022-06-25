//
//  LunchViewController.swift
//  FBLA Mobile App Dev
//
//  Created by Amy Yang on 6/22/22.
//

import UIKit

class LunchViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var picker1Options = ["APUSH", "AP Calc BC", "AP Psych"]
    var picker2Options = ["APUSH", "AP Calc BC", "AP Psych"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1 {
            return picker1Options.count
        }
        else {
            return picker2Options.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1 {
            return "\(picker1Options[row])"
        }
        else {
            return "\(picker2Options[row])"
        }
    }
}
