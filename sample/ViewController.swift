//
//  ViewController.swift
//  sample
//
//  Created by ec2-user on 12/22/24.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        
        webView = WKWebView(frame: .zero,configuration:webConfiguration)
        webView.navigationDelegate = self
        
        webView.scrollView.isScrollEnabled = false;
        
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 表示したいURLを指定
        if let htmlPath = Bundle.main.path(forResource: "index", ofType: "html") {
            let localURL = URL(fileURLWithPath: htmlPath)
            let request = URLRequest(url: localURL)
            webView.load(request)
        }
    }
}

