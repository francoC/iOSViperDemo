//
//  ListItem+CoreDataProperties.swift
//  Viper Test
//
//  Created by Franco Castellano on 11/10/17.
//  Copyright © 2017 Castellano. All rights reserved.
//
//

import Foundation
import CoreData


extension ListItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ListItem> {
        return NSFetchRequest<ListItem>(entityName: "ListItem")
    }

    @NSManaged public var name: String?

}
