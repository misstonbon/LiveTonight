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
import Social

class DetailsViewController: UIViewController {
    
    var concertData: Concert?
    var eventName: String?
    var venueName: String?
    var ticketsURL: String?
    

    @IBOutlet weak var eventTextView: UITextView!
    
    @IBAction func toTickets(_ sender: Any) {
        openTicketsUrl(urlStr: concertData?.linkToTickets )
    }
    
    @IBAction func toJonKay(_ sender: Any) {
        openJonKayTwitter(urlStr: "http://www.twitter.com/thejonkay" )
    }
    
    @IBAction func shareFacebook(_ sender: Any) {
        shareEvent()
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
    
    func shareEvent(){
        let activityController = UIActivityViewController(activityItems: [eventTextView.text!, "Join me for some live music tonight!"], applicationActivities: nil)
        present(activityController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let concertDataToDisplay = concertData {
            eventTextView.text = concertDataToDisplay.title
        } else {
            eventTextView.text = concertData?.locationName
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let concertDataToDisplay = concertData {
            eventTextView.text = concertDataToDisplay.title
        } else {
            eventTextView.text = concertData?.locationName
        }
    }
}
