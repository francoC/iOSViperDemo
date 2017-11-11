//
//  NewItemProtocols.swift
//  Viper Test
//
//  Created by Franco Castellano on 11/9/17.
//  Copyright © 2017 Castellano. All rights reserved.
//

import UIKit

protocol NewItemWireframeProtocol: class {
    static func createNewItemModule() -> UIViewController
}

protocol NewItemViewProtocol: class {
    var presenter: NewItemPresenterProtocol? { get set }
    
    func saveItem(_ name: String)
    func showSuccess()
}

protocol NewItemPresenterProtocol: class {
    var view: NewItemViewProtocol? { get set }
    var interactor: NewItemInteractorInputProtocol? { get set }
    var wireframe: NewItemWireframeProtocol? { get set }
    
    func viewDidLoad()
    func addNewItem(name: String)
}

protocol NewItemInteractorInputProtocol: class {
    var presenter : NewItemInteractorOutputProtocol? { get set }
    var dataManager: NewItemDataManagerInputProtocol? { get set }
    
    func addItem(_ name: String)
}

protocol NewItemInteractorOutputProtocol: class {
    func didAddItem()
}

protocol NewItemDataManagerInputProtocol: class {
    func addItem(_ item: ListItemModel) throws
}
