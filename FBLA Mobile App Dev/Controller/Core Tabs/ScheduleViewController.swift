//
//  ScheduleViewController.swift
//  FBLA Mobile App Dev
//
//  Created by Amy Yang on 6/22/22.
//

import UIKit

class ScheduleViewController: UIViewController {
   
    @IBOutlet weak var blockOne: UILabel!
    @IBOutlet weak var blockTwo: UILabel!
    @IBOutlet weak var blockThree: UILabel!
    @IBOutlet weak var blockFour: UILabel!
    @IBOutlet weak var blockFive: UILabel!
    @IBOutlet weak var blockSix: UILabel!
    @IBOutlet weak var blockSeven: UILabel!
    @IBOutlet weak var blockEight: UILabel!
    
    var blockOneClass: String = ""
    var blockTwoClass: String = ""
    var blockThreeClass: String = ""
    var blockFourClass: String = ""
    var blockFiveClass: String = ""
    var blockSixClass: String = ""
    var blockSevenClass: String = ""
    var blockEightClass: String = ""
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        blockOne.text = "Block One: \(blockOneClass)"
        blockTwo.text = "Block Two: \(blockTwoClass)"
        blockThree.text = "Block Three: \(blockThreeClass)"
        blockFour.text = "Block Four: \(blockFourClass)"
        blockFive.text = "Block Five: \(blockFiveClass)"
        blockSix.text = "Block Six: \(blockSixClass)"
        blockSeven.text = "Block Seven: \(blockSevenClass)"
        blockEight.text = "Block Eight: \(blockEightClass)"
    }
    
    @IBAction func unwindToDisplay(_ sender: UIStoryboardSegue) {
    }
    
}
