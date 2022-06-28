import UIKit
import WebKit

class HomeViewController: UIViewController {
    
    //Creates WKWebView
    @IBOutlet weak var webView: WKWebView!
    
    var url: URL!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Sets landing screen as Twitter
        url = URL(string: "https://twitter.com/mhactivities?lang=en")!
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
    //When segmented control is changed, the url of the webView switches depending on the tab
    @IBAction func didChangeSegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            url = URL(string: "https://twitter.com/mhactivities?lang=en")!

        }
        else if sender.selectedSegmentIndex == 1 {
            url = URL(string: "https://www.instagram.com/hillsathletics")!

        }
        else if sender.selectedSegmentIndex == 2 {
           url = URL(string: "https://www.facebook.com/mhrdschools/")!
        }
        let request = URLRequest(url: url)
        webView.load(request)
    }
}

