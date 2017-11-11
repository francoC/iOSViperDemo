//
//  NewItemLocalDataManager.swift
//  Viper Test
//
//  Created by Franco Castellano on 11/9/17.
//  Copyright © 2017 Castellano. All rights reserved.
//

import CoreData

class NewItemLocalDataManager: NewItemDataManagerInputProtocol {
    func addItem(_ item: ListItemModel) throws {
        guard let managedOC = CoreDataStore.managedObjectContext else {
            throw PersistenceError.managedObjectContextNotFound
        }
        
        let newItem = NSEntityDescription.insertNewObject(forEntityName: "ListItem", into: managedOC) as! ListItem
        newItem.name = item.name
        CoreDataStore.saveContext()
    }
}
