//
//  ViewController.swift
//  SunnyMobDemo
//
//  Created by Gowri on 5/19/16.
//  Copyright © 2016 sunnymob. All rights reserved.
//

import UIKit
import Sunny

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAdButtonTapped(sender: AnyObject) {
        showAd()
    }
    
    func showAd() {
        let smlManager = SMLManager.sharedInstance()
        //If doesnt want to do anything, pass the call back method as nil
        smlManager.showAdvertisement(self, didFinish: nil)
    }


}

