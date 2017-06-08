//
//  Pin.swift
//  VirtualTourist
//
//  Created by Andrew on 6/7/17.
//  Copyright © 2017 Andrew. All rights reserved.
//

import Foundation
import CoreData

//Pin Class

public class Pin: NSManagedObject {
    
    convenience init(latitude: Double, longitude: Double, context: NSManagedObjectContext) {
        
        if let ent = NSEntityDescription.entity(forEntityName: "Pin", in: context) {
            
            self.init(entity: ent, insertInto: context)
            self.latitude   = latitude
            self.longitude  = longitude
            
        } else {
            
            fatalError("Unable To Find Entity Name!")
        }
    }
    
}
