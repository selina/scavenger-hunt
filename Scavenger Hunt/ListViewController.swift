//
//  ListViewController.swift
//  Scavenger Hunt
//
//  Created by Apple on 3/26/16.
//  Copyright © 2016 Apple. All rights reserved.
//

import UIKit

class ListViewController : UITableViewController {
    //ListViewController inherits from UITableViewController
    var itemsList = ["Cat", "Bird", "Brick"]
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ListViewCell", forIndexPath: indexPath)
        cell.textLabel?.text = itemsList[indexPath.row]
        return cell
    }
    
}


