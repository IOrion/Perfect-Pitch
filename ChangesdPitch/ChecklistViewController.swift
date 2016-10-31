//
//  ChecklistViewController.swift
//  ChangesdPitch
//
//  Created by Virtual Enteprise on 1/21/16.
//  Copyright © 2016 Virtual Enteprise. All rights reserved.
//

import UIKit

class ChecklistViewController: UIViewController {
   
    var GoogleMapURL = NSURL(string: "https://www.google.com/maps")
    //---
    @IBAction func backBtn(sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
        
    }
    //--
    @IBOutlet weak var CheckList: UINavigationBar!

    @IBOutlet weak var GoogleMaps: UINavigationBar!
    
    @IBOutlet weak var Webview: UIWebView!

//----------
    @IBOutlet weak var CheckBox: UIButton!
    
    var unchecked:Bool = true
//----------

    
    
//--------
    @IBAction func GoogleMaps(sender: AnyObject) {

        GoogleMaps.isHidden = false
        Webview.isHidden = false
        CheckList.isHidden = true
        Webview.loadRequest(NSURLRequest(url: GoogleMapURL! as URL) as URLRequest)
    }
    
    
//------
    override func viewDidLoad() {
        super.viewDidLoad()
        GoogleMaps.isHidden = true
        CheckList.isHidden = false
        Webview.isHidden = true
        // Do any additional setup after loading the view.
    }

//--------
    
    @IBAction func ChekBoxTapped(sender: UIButton)
    {
        
        if(sender.imageView?.image == UIImage(named: "CheckBoxBlank")){
            sender.imageView?.image = UIImage(named: "CheckBoxWithCheck.png") as UIImage!
            sender.setImage(sender.imageView?.image, for: .normal)
            unchecked = false
        }
        
        else{
            sender.imageView?.image = UIImage(named: "CheckBoxBlank.png") as UIImage!
            sender.setImage(sender.imageView?.image, for: .normal)
            unchecked = true
        
        }
    }
//--------
}
