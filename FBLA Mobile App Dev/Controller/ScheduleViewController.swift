import UIKit

class ScheduleViewController: UIViewController {
   
    //Create variables for each of the labels
    @IBOutlet weak var blockOne: UILabel!
    @IBOutlet weak var blockTwo: UILabel!
    @IBOutlet weak var blockThree: UILabel!
    @IBOutlet weak var blockFour: UILabel!
    @IBOutlet weak var blockFive: UILabel!
    @IBOutlet weak var blockSix: UILabel!
    @IBOutlet weak var blockSeven: UILabel!
    @IBOutlet weak var blockEight: UILabel!
    
    //Create variables for empty strings that later retain the information passed from the segue
    var blockOneClass: String = ""
    var blockTwoClass: String = ""
    var blockThreeClass: String = ""
    var blockFourClass: String = ""
    var blockFiveClass: String = ""
    var blockSixClass: String = ""
    var blockSevenClass: String = ""
    var blockEightClass: String = ""
    
    //Sets the new information that will display on the labels
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
    
    //Creating an unwind segue function name
    @IBAction func unwindToDisplay(_ sender: UIStoryboardSegue) {
    }
    
}
