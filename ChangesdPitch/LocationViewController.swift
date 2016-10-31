import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func PressedButton(sender: UIButton) {
        let choose = UIAlertView()
        
        // choose.addButtonWithTitle("Google Maps")
        //choose.addButtonWithTitle("Apple Maps")
        //choose.title = "Navigate"
        //choose.show()
        
        /*   if (UIApplication.sharedApplication().canOpenURL(NSURL(string:"comgooglemaps://")!)) {
        UIApplication.sharedApplication().openURL(NSURL(string:
        "comgooglemaps://?center=40.765819,-73.975866&zoom=14&views=traffic")!)
        }
        
        else {
        NSLog("Can't use Google Maps");
        } */
        
        //Apple Maps
        if (UIApplication.sharedApplication().canOpenURL(NSURL(string:"http://maps.apple.com")!)) {
            UIApplication.sharedApplication().openURL(NSURL(string:
                "http://maps.apple.com/?daddr=San+Francisco,+CA&saddr=cupertino")!)
        } else {
            NSLog("Can't use Apple Maps");
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

