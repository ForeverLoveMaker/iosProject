//
//  ViewController.swift
//  13.2webView
//
//  Created by student on 2018/12/12.
//  Copyright © 2018年 2014110460. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var lookTf: UITextField!
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "http://www.baidu.com")!
        webView.load(URLRequest(url: url))

    }

    @IBAction func back(_ sender: Any) {
        webView.goBack()
    }
    @IBAction func forward(_ sender: Any) {
        webView.goForward()
    }
    @IBAction func refresh(_ sender: Any) {
        webView.reload()
    }
    @IBAction func enter(_ sender: Any) {
        if let url = URL(string: lookTf.text ?? "") {
            webView.load(URLRequest(url: url))
        }
    }
    
}

