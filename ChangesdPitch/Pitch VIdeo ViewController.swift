//
//  Pitch VIdeo ViewController.swift
//  ChangesdPitch
//
//  Created by Virtual Enteprise on 4/12/16.
//  Copyright © 2016 Virtual Enteprise. All rights reserved.
//

import UIKit

class Pitch_VIdeo_ViewController: UIViewController {

    @IBAction func backBtn(sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBOutlet weak var Webview: UIWebView!
    @IBOutlet weak var Webview2: UIWebView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        //First Video
        let YoutubeVideoLink:String = "https://www.youtube.com/watch?v=NoN5XX67ci4&nohtml5=False"
        
        let width = 345
        let height = 230
        let frame = 30
        
        let Code:String = "<iframe width=\(width) height=\(height) src=\(YoutubeVideoLink) frameborder=\(frame) allowfullscreen></iframe>";
        
        self.Webview.loadHTMLString(Code as String, baseURL: nil)
        
        //Second Video
        let YoutubeVideoLink2:String = "https://www.youtube.com/watch?v=XvxtC60V6kc"
        
        let width2 = 345
        let height2 = 230
        let frame2 = 30
        
        let Code2:String = "<iframe width=\(width2) height=\(height2) src=\(YoutubeVideoLink2) frameborder=\(frame2) allowfullscreen></iframe>";
        
        self.Webview2.loadHTMLString(Code2 as String, baseURL: nil)
    }
    

}
