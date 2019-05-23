//
//  ViewController.swift
//  web
//
//  Created by Adiel Vasquez on 5/22/19.
//  Copyright © 2019 Adiel Vasquez. All rights reserved.
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
        
        let myURL = URL(string:"https://www.gob.mx")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}
