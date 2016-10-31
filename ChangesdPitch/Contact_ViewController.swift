//
//  Contact ViewController.swift
//  ChangesdPitch
//
//  Created by Virtual Enteprise on 2/9/16.
//  Copyright © 2016 Virtual Enteprise. All rights reserved.
//

import UIKit

class Contact_ViewController: UIViewController{
    
    @IBOutlet weak var Webview: UIWebView!
    
    var FacebookURL = NSURL(string: "https://www.facebook.com/nuapps")
    var TwitterURL = NSURL(string: "https://www.twitter.com/nuapps")
    var InstagramURL = NSURL(string: "https://www.Instagram.com/nuapps/")
    
    
    @IBOutlet weak var Contact: UINavigationBar!
    
    @IBOutlet weak var Facebook: UINavigationBar!
    
    @IBOutlet weak var Twitter: UINavigationBar!
    
    @IBOutlet weak var Instagram: UINavigationBar!
    
    
//------------------------
    
    
    @IBAction func backBtn(sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func Facebook(sender: AnyObject) {
        Contact.isHidden = true
        Webview.isHidden = false
        Facebook.isHidden = false
                Webview.loadRequest(NSURLRequest(url: FacebookURL! as URL) as URLRequest)
    }

    @IBAction func Twitter(sender: AnyObject) {
        Contact.isHidden = true
        Webview.isHidden = false
        Twitter.isHidden = false
        Webview.loadRequest(NSURLRequest(url: FacebookURL! as URL) as URLRequest)
    }
    
    @IBAction func Instagram(sender: AnyObject) {
        Contact.isHidden = true
        Webview.isHidden = false
        Instagram.isHidden = false
        Webview.loadRequest(NSURLRequest(url: InstagramURL! as URL) as URLRequest)
    }
    
//----------------------------
    
       
    override func viewDidLoad() {
        super.viewDidLoad()
        Webview.isHidden = true
        Facebook.isHidden = true
        Twitter.isHidden = true
        Instagram.isHidden = true
        Contact.isHidden = false
        
        

        // Do any additional setup after loading the view.
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
