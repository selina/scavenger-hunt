//
//  ScavengerHuntItem.swift
//  Scavenger Hunt
//
//  Created by Apple on 3/26/16.
//  Copyright © 2016 Apple. All rights reserved.
//

import UIKit

class ScavengerHuntItem : NSObject {
    let name : String
    var photo : UIImage?
    var completed: Bool {
        return photo != nil
    }
    
    init(name : String){
        self.name = name
    }
}
