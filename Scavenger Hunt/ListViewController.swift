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
    var itemsList = [
        ScavengerHuntItem(name: "Cat"),
        ScavengerHuntItem(name: "Bird"),
        ScavengerHuntItem(name: "Brick")
    ]
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ListViewCell", forIndexPath: indexPath)
        let item = itemsList[indexPath.row]
        cell.textLabel?.text = item.name
        return cell
    }
    
    @IBAction func unwindToList (segue: UIStoryboardSegue) {
        let addVC = segue.sourceViewController as! AddViewController
        if let newItem = addVC.newItem {
            itemsList += [newItem]
            
            let indexPath = NSIndexPath(forRow: itemsList.count - 1, inSection: 0)
            tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        }
    }
    
}


