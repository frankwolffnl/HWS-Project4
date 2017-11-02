//
//  ViewController.swift
//  Project4
//
//  Created by Frank Wolff on 02/11/2017.
//  Copyright © 2017 Frank Wolff. All rights reserved.
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
		let url = URL(string: "https://www.hackingwithswift.com")!
		webView.load(URLRequest(url: url))
		webView.allowsBackForwardNavigationGestures = true
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

