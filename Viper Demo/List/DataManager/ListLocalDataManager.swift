//
//  ListLocalDataManager.swift
//  Viper Test
//
//  Created by Franco Castellano on 11/9/17.
//  Copyright © 2017 Castellano. All rights reserved.
//

import CoreData

class ListLocalDataManager: ListDataManagerInputProtocol {
    func getList() throws -> [ListItem]  {
        
        guard let managedOC = CoreDataStore.managedObjectContext else {
            throw PersistenceError.managedObjectContextNotFound
        }
        
        let request: NSFetchRequest<ListItem> = NSFetchRequest(entityName: String(describing: ListItem.self))
        
        return try managedOC.fetch(request)
    }
}
