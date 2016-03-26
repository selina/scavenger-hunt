//
//  ItemsManager.swift
//  Scavenger Hunt
//
//  Created by Apple on 3/26/16.
//  Copyright © 2016 Apple. All rights reserved.
//

import Foundation

class ItemsManager {
    var itemsList = [ScavengerHuntItem]()
    
    func archivePath() -> String? {
        let directoryList = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
        if let documentPath = directoryList.first {
            return documentPath + "/ScavengerHuntItems"
        }
        assertionFailure("Could not determine where to store the file.")
        return nil
    }
    
    func save() {
        if let theArchivePath = archivePath() {
            if NSKeyedArchiver.archiveRootObject(itemsList, toFile: theArchivePath) {
                print("Saved successfully")
            }
            else {
                assertionFailure("Could not save data to \(theArchivePath)")
            }
        }
    }
    
    init() {
        if let theArchivePath = archivePath() {
            if NSFileManager.defaultManager().fileExistsAtPath(theArchivePath) {
                itemsList = NSKeyedUnarchiver.unarchiveObjectWithFile(theArchivePath) as! [ScavengerHuntItem]
            }
        }
    }
}