# sunnyMobDemo
Demo application featuring the use of Sunny Framework for displaying video ads and interstitials in your iOS application. 


You can use this project to run a demo and as a reference. 
For your own iOS project you need to copy and import the **Sunny.framework** file to your project and follow these steps:

Step 1: Select your proj file, go to General tab while selecting your app target and ensure that **Sunny.framework** has been added to **Embedded Binaries** as well as **Linked Frameworks and Libraries**

Step 2: Go to Info tab to edit your project’s Info.plist and add the following key value pairs:

	
	App Transport Security Settings: {
	Allow Arbitrary Loads: YES }
	

Step 3: Go to Appdelegate file and add “import Sunny”. Add the following lines of code in didFinishLaunchingWithOptions method:
        
        
        let smlManager = SMLManager.sharedInstance()
        let token = "ef4dfc79-e266-490b-b842-13b9384a0985"
        //SMLManager used for Initializing with your token
        smlManager.initialize(withToken: token, isVideoOnly: false)
        
        
 > the token can be created here (iOS_SDK):http://sunnymob.com/dev/apps/index
 
  Step 4: You can now use the following lines of code to show Ad in your application:
  
  A) Get shared instance of smlManager and use it to show Ads.
  
    	let smlManager = SMLManager.sharedInstance()
        //SMLManager used for showing the ad controller
        smlManager.showAdvertisement(self)
        
        
  B) Adopt SMLManagerDelegate (Swift Protocol) in your view controller and add the following optional methods to learn the state of your advertisement:
  	
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
        

**The adoption of mentioned protocol requires you to set the delegate somewhere. This might in ViewDidLoad of your ViewController. Please refer to the example project for more details.**

> **Note: Make sure that you use “import Sunny” in the files where you are using smlManager.**
