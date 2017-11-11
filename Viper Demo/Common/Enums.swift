//
//  Enums.swift
//  Viper Demo
//
//  Created by Franco Castellano on 11/11/17.
//  Copyright © 2017 Castellano. All rights reserved.
//

enum PersistenceError: Error {
    case managedObjectContextNotFound
    case couldNotSaveObject
    case objectNotFound
}
