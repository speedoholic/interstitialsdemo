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
        showAdWithCallback()
    }
    
    
    func showAdWithCallback () {
        
        let smlManager = SMLManager.sharedInstance()
        
        smlManager.showAdvertisement(self, didFinish: {
            (status: SMLAdvertisementStatus) in
            
            //Use callback status returned by the SDK
            switch status {
                case .Complete:
                    //print("Ad shown to user successfully")
                    break
                case .Ready:
                    print("NOW READY TO SHOW AD")
                    //If your application is having user intensive functionality, you can choose to comment the following line of code.
                    smlManager.showAdvertisement(self, didFinish: nil)
                    break
                case .Error:
                    print("Error! Please check your token or contact SunnyMob Customer Care")
                    break
            }
        })
    }


}

