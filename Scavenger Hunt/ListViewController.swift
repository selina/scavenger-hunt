//
//  ListViewController.swift
//  Scavenger Hunt
//
//  Created by Selina Wang on 3/26/16.
//  Copyright © 2016 Apple. All rights reserved.
//

import UIKit

class ListViewController : UITableViewController {
    //ListViewController inherits from UITableViewController
    
    let myManager = ItemsManager()

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myManager.itemsList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ListViewCell", forIndexPath: indexPath)
        let item = myManager.itemsList[indexPath.row]
        cell.textLabel?.text = item.name
        return cell
    }
    
    @IBAction func unwindToList (segue: UIStoryboardSegue) {
        let addVC = segue.sourceViewController as! AddViewController
        if let newItem = addVC.newItem {
            myManager.itemsList += [newItem]
            myManager.save()
            let indexPath = NSIndexPath(forRow: myManager.itemsList.count - 1, inSection: 0)
            tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        }
    }
}


