//
//  ViewController.swift
//  testPhoneCall
//
//  Created by Coleten McGuire on 4/12/16.
//
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var callPhoneButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submit(sender: AnyObject) {
        callNumber("6608530543")
    }


}

private func callNumber(phoneNumber:String) {
    if let phoneCallURL:NSURL = NSURL(string: "tel://\(phoneNumber)") {
        let application:UIApplication = UIApplication.sharedApplication()
        if (application.canOpenURL(phoneCallURL)) {
            application.openURL(phoneCallURL);
        }
    }
}