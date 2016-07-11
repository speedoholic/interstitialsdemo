//
//  ViewController.swift
//  SunnyMobDemo
//
//  Created by Gowri on 5/19/16.
//  Copyright © 2016 sunnymob. All rights reserved.
//

import UIKit
import Sunny

class ViewController: UIViewController, SMLManagerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let smlManager = SMLManager.sharedInstance()
        smlManager.delegate = self
    }
    
    @IBAction func showAdButtonTapped(sender: AnyObject) {
        showAd()
    }
    
    func smlDidShowAd() {
        print("Ad displayed to user successfully")
    }
    
    func smlAdIsNowReady(campaignId:String, mediaType:String) {
        print("Ad is now ready for \(campaignId) with Media Type: \(mediaType)")
    }
    
    func smlAdNotReady() {
        print("Ad is NOT ready to display")
    }
    
    func smlAdClosed() {
        print("Ad closed by user")
    }
    
    
    // User action methods
    
    
    func showAd() {
        let smlManager = SMLManager.sharedInstance()
        //SMLManager used for showing the ad controller
        smlManager.showAdvertisement(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}

