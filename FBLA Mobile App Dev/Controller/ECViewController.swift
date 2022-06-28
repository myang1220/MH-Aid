import UIKit
import WebKit

class ECViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Create view frame, then create subview called webView in that view frame
        let webView = WKWebView(frame: view.frame)
        view.addSubview(webView)
        
        //Taking string of URL, getting URLRequest, and then loading the request
        let url = URL(string: "https://sites.google.com/mhrd.org/mhclubs/home")!
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
