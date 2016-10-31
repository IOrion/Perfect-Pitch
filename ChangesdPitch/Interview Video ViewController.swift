//
//  Interview Video ViewController.swift
//  ChangesdPitch
//
//  Created by Virtual Enteprise on 4/12/16.
//  Copyright © 2016 Virtual Enteprise. All rights reserved.
//

import UIKit
import AVKit

class Interview_Video_ViewController: UIViewController {

    @IBOutlet weak var Webview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let YoutubeVideoLink:String = "https://www.youtube.com/watch?v=y1Y02_oZP8U&nohtml5=False"
        
        let width = 345
        let height = 230
        let frame = 30
        
        let Code:NSString = "<iframe width=\(width) height=\(height) src=\(YoutubeVideoLink) frameborder=\(frame) allowfullscreen></iframe>" as NSString;
        
        self.Webview.loadHTMLString(Code as String, baseURL: nil)
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
