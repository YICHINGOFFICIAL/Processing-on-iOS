//
//  ViewController.swift
//  processing
//
//  Created by YICHING on 2020/6/20.
//  Copyright © 2020 yichingofficial. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
        
    @IBOutlet weak var webView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let localFilePath = Bundle.main.url(forResource: "demo", withExtension: "html")
        let request = URLRequest(url: localFilePath!)
        
        webView.scrollView.isScrollEnabled = false
        webView.scrollView.contentInsetAdjustmentBehavior = .never
        webView.load(request)
    }
    
    
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}

