//
//  DetailsViewController.swift
//  LiveTonight
//
//  Created by Tanja  Stroble on 1/11/18.
//  Copyright © 2018 Tanja  Stroble. All rights reserved.
//

import UIKit
import MapKit
import Foundation

class DetailsViewController: UIViewController {
    
    var concertData: Concert?
    var eventName: String?
    var venueName: String?
    var ticketsURL: String?
    
    @IBOutlet var eventTitle: UILabel!
    
    @IBAction func toTickets(_ sender: Any) {
        openTicketsUrl(urlStr: concertData?.linkToTickets )
    }
    
    @IBAction func toJonKay(_ sender: Any) {
        openJonKayTwitter(urlStr: "http://www.twitter.com/thejonkay" )
    }
    
    @IBAction func shareTwitter(_ sender: Any) {
        shareOnTwitter(urlStr: "http://www.twitter.com" )
    }
    
    @IBAction func shareFacebook(_ sender: Any) {
        shareOnFacebook(urlStr: "http://www.facebook.com" )
    }
    
    func openTicketsUrl(urlStr:String!) {
        if let url = NSURL(string:urlStr){
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
    }
    
    func openJonKayTwitter(urlStr:String!) {
        if let url = NSURL(string:urlStr){
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
    }
    
    func shareOnTwitter(urlStr:String!) {
        if let url = NSURL(string:urlStr){
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
    }
    
    func shareOnFacebook(urlStr:String!) {
        if let url = NSURL(string:urlStr){
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let concertDataToDisplay = concertData {
            eventTitle.text = concertDataToDisplay.title
        }
    }
    
}
