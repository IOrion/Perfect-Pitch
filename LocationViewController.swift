import UIKit

class LocationViewController: UIViewController {
    
    
    @IBAction func PressedButton(sender: AnyObject) {
    

        
        //Apple Maps
        if (UIApplication.shared.canOpenURL(NSURL(string:"https://www.google.com/maps")! as URL)) {
            UIApplication.shared.openURL(NSURL(string:
                "https://www.google.com/maps")! as URL)
        } else {
            NSLog("Can't use Google Maps");
        }
    }
    
    
}

