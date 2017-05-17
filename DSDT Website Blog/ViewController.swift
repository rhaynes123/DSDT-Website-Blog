//
//  ViewController.swift
//  DSDT Website Blog
//
//  Created by richard Haynes on 5/11/17.
//  Copyright © 2017 Me. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: "https://www.detroitschoolfordigitaltechnology.com/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}
