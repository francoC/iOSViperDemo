//
//  NewItemInteractor.swift
//  Viper Test
//
//  Created by Franco Castellano on 11/9/17.
//  Copyright © 2017 Castellano. All rights reserved.
//

import UIKit

class NewItemInteractor: NewItemInteractorInputProtocol {
    weak var presenter: NewItemInteractorOutputProtocol?
    var dataManager: NewItemDataManagerInputProtocol?
    
    func addItem(_ name: String) {
        do {
            try dataManager?.addItem(ListItemModel(name: name))
            presenter?.didAddItem()
        } catch {
        }
    }
}
