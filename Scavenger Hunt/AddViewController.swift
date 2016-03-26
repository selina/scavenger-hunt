//
//  AddViewController.swift
//  Scavenger Hunt
//
//  Created by Apple on 3/26/16.
//  Copyright © 2016 Apple. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cancel(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}

