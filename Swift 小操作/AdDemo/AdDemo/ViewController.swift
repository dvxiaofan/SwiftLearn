//
//  ViewController.swift
//  AdDemo
//
//  Created by xiaofans on 16/9/3.
//  Copyright © 2016年 xiaofan. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController, GADBannerViewDelegate {
    
    @IBOutlet weak var banner: GADBannerView!
    
    var intersital : GADInterstitial!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        banner.hidden = true
        banner.delegate = self
        
        banner.adUnitID = "ca-app-pub-7304033372417454/9094191443"
        banner.rootViewController = self
        banner.loadRequest(GADRequest())
        
        intersital = GADInterstitial(adUnitID: "ca-app-pub-7304033372417454/6001224242")
        intersital.loadRequest(GADRequest())
        
    }
    
    func adViewDidReceiveAd(bannerView: GADBannerView!) {
        banner.hidden = false
    }
    
    func adView(bannerView: GADBannerView!, didFailToReceiveAdWithError error: GADRequestError!) {
        banner.hidden = true
    }

    @IBAction func showAdClick(sender: AnyObject) {
        if intersital.isReady {
            intersital.presentFromRootViewController(self)
            intersital = cteatAd()
        }
    }
    
    private func cteatAd() -> GADInterstitial {
        let intersital = GADInterstitial(adUnitID: "ca-app-pub-7304033372417454/6001224242")
        intersital.loadRequest(GADRequest())
        
        return intersital
    }
    
}

