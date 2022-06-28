import UIKit

class LunchViewController: UIViewController {

    //Create variables for each of the labels
    @IBOutlet weak var specialOneLabel: UILabel!
    @IBOutlet weak var specialTwoLabel: UILabel!
    @IBOutlet weak var vegetablesLabel: UILabel!
    @IBOutlet weak var friesLabel: UILabel!
    @IBOutlet weak var smileyPlaceholder: UILabel!
    @IBOutlet weak var thumbsDownPlaceholder: UILabel!
    
    //Create variables for empty strings that will later take in information passed through segue
    var menuSpecialOne: String = ""
    var menuSpecialTwo: String = ""
    var specialVegetables: String = ""
    var friesYesNo: String = ""

    //Create image view to input SF symbol later on
    let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .black
        
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Hides the fries label as no information has been input yet
        friesLabel.isHidden = true
    }
    
    //Creates an unwind segue function name
    @IBAction func returnBack(_ sender: UIStoryboardSegue) {
    }
    
    //Creates an unwind segue function name
    @IBAction func unwindToLunchMenu(_ sender: UIStoryboardSegue) {
        
        //Sets the three labels to their respective unique inputs from the segue
        specialOneLabel.text = "\(menuSpecialOne)"
        specialTwoLabel.text = "\(menuSpecialTwo)"
        vegetablesLabel.text = "\(specialVegetables)"
        
        //Sets the fries label to be either positive or negative depending on the if else condition
        if friesYesNo == "Yes" {
            friesLabel.isHidden = false
            view.addSubview(imageView)
            imageView.center = smileyPlaceholder.center
            imageView.image = UIImage(systemName: "face.smiling")
            friesLabel.text = "       We are serving fries today!"
        }
        else {
            friesLabel.isHidden = false
            view.addSubview(imageView)
            imageView.center = thumbsDownPlaceholder.center
            imageView.image = UIImage(systemName: "hand.thumbsdown.circle")
            friesLabel.text = "       We are not serving fries today!"
        }
    }
}
