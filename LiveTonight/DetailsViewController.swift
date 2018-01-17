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
    

    @IBOutlet weak var eventTextView: UITextView!
    
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
            eventTextView.text = concertDataToDisplay.title
        } else {
            eventTextView.text = "Etizzle i saw beyonces tizzles and my pizzle went crizzle urna izzle nisl. Away quis arcu. Shiz pulvinar, ipsum check it out malesuada check it out, nulla phat euismizzle felis, brizzle luctus metizzle shiznit et boom shackalack. Vivamizzle ullamcorpizzle, ma nizzle we gonna chung uhuh ... yih! , nibh nunc izzle ass, izzle gangsta leo elit the bizzle dolor. Mauris own yo', orci vel go to hizzle shizznit, sizzle fo shizzle luctizzle uhuh ... yih!, izzle get down get down enizzle izzle nisl. Nullam a velizzle yo orci mammasay mammasa mamma oo sa . Gizzle nizzle go to hizzle."
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let concertDataToDisplay = concertData {
            eventTextView.text = concertDataToDisplay.title
        } else {
            eventTextView.text = "Etizzle i saw beyonces tizzles and my pizzle went crizzle urna izzle nisl. Away quis arcu. Shiz pulvinar, ipsum check it out malesuada check it out, nulla phat euismizzle felis, brizzle luctus metizzle shiznit et boom shackalack. Vivamizzle ullamcorpizzle, ma nizzle we gonna chung uhuh ... yih! , nibh nunc izzle ass, izzle gangsta leo elit the bizzle dolor. Mauris own yo', orci vel go to hizzle shizznit, sizzle fo shizzle luctizzle uhuh ... yih!, izzle get down get down enizzle izzle nisl. Nullam a velizzle yo orci mammasay mammasa mamma oo sa. Gizzle nizzle go to hizzle."
        }
    }
}
