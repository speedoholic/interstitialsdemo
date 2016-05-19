# sunnyMobDemo
Demo application featuring the use of Sunny Framework for displaying video ads and interstitials in your iOS application. 


You can use this project to run a demo and as a reference. 
For your own iOS project you need to copy and import the **Sunny.framework** file to your project and follow these steps:

Step 1: Select your proj file, go to General tab while selecting your app target and ensure that **Sunny.framework** has been added to **Embedded Binaries** as well as **Linked Frameworks and Libraries**

Step 2: Go to Info tab to edit your project’s Info.plist and add the following key value pairs:

	```
	App Transport Security Settings: {
	Allow Arbitrary Loads: YES }
	```

Step 3: Go to Appdelegate file and add “import Sunny”. Add the following lines of code in didFinishLaunchingWithOptions method:
        
        ```
        let smlManager = SMLManager.sharedInstance()
        let token = "ef4dfc79-e266-490b-b842-13b9384a0985"
        //SMLManager used for Initializing with your token
        smlManager.initialize(withToken: token)
        ```
        
 > the token can be created here (iOS_SDK):http://sunnymob.com/dev/apps/index
 
  Step 4: You can now use any of the following two methods to show advertisement in your application:
  
  A)
  
    	```	
    	let smlManager = SMLManager.sharedInstance()

        //SMLManager usage for showing the contorller

        smlManager.showAdvertisement(self, didFinish: {
            (status: SMLAdvertisementStatus) in
            //Do something with the call back
            switch status {
            case .Complete:
                    print("Complete")
                break
            case .Ready:
                    print("READY TO SHOW AD")
                break
            case .Error:
                    print("Error")
                break
            }
        })
        ```
        
  B)
  
  	```
    	let smlManager = SMLManager.sharedInstance()
        //If doesnt want to do anything, pass the call back method as nil
        smlManager.showAdvertisement(self, didFinish: nil)
        ```

**The call back method mentioned in part A can be used to learn if the ad is ready. You can use this opportunity to call the smlManager.showAdvertisement method again since it means that the ad was not ready when you called it last time.**

> **Note: Make sure that you use “import Sunny” in the files where you are using smlManager.**
