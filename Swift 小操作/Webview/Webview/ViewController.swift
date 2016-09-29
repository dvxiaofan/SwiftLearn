//
//  ViewController.swift
//  Webview
//
//  Created by xiaofans on 16/9/2.
//  Copyright © 2016年 xiaofan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Webview: UIWebView!
    @IBOutlet weak var SearchBar: UISearchBar!
    @IBOutlet weak var Actity: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://devxiaofan.com")
        let request = NSURLRequest(URL: url!)
        
        Webview.loadRequest(request)
        
        SearchBar.text = "http://"
    }
    
    func searchBarSearchButtonClicked(searchBar : UISearchBar) {
        searchBar.resignFirstResponder()
        
        let text = SearchBar.text
        let url = NSURL(string: text!)
        let request = NSURLRequest(URL: url!)
        
        Webview.loadRequest(request)
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        Actity.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        Actity.stopAnimating()
    }
    
    
}













