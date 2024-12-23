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
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 表示したいURLを指定
        let url = URL(string: "https://www.google.com")!
        let request = URLRequest(url: url)
        webView.load(request)
    }
}

