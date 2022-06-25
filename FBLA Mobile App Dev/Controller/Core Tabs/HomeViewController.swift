//
//  ViewController.swift
//  FBLA Mobile App Dev
//
//  Created by Amy Yang on 6/21/22.
//

import UIKit
import WebKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    var url: URL!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        url = URL(string: "https://twitter.com/mhactivities?lang=en")!
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
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

