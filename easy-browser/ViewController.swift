//
//  ViewController.swift
//  easy-browser
//
//  Created by Bradley Chesworth on 03/02/2020.
//  Copyright © 2020 Brad Chesworth. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.google.co.uk")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }


}

extension ViewController: WKNavigationDelegate {
    
}

