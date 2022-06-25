//
//  CalendarViewController.swift
//  FBLA Mobile App Dev
//
//  Created by Amy Yang on 6/22/22.
//

import UIKit
import WebKit

class CalendarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //Create view frame, then create subview called webView in that view frame
        let webView = WKWebView(frame: view.frame)
        view.addSubview(webView)
        
        //Taking string of URL, getting URLRequest, and then loading the request
        let url = URL(string: "https://calendar.google.com/calendar/u/0/embed?src=mhrd.org_ute0hd0v7flog5sd6nq9fr98rc@group.calendar.google.com&ctz=America/New_York")!
        let request = URLRequest(url: url)
        webView.load(request)

        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
