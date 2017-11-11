//
//  ListProtocols.swift
//  Viper Test
//
//  Created by Franco Castellano on 11/9/17.
//  Copyright © 2017 Castellano. All rights reserved.
//

import UIKit

protocol ListWireframeProtocol: class {
    // PRESENTER -> WIREFRAME
    static func createListModule() -> UIViewController
    func presentAddNewItem(sourceView: ListViewProtocol)
}

protocol ListPresenterProtocol: class {
    var view: ListViewProtocol? { get set }
    var interactor: ListInteractorInputProtocol? { get set }
    var wireframe: ListWireframeProtocol? { get set }
    
    // VIEW -> PRESENTER
    func viewDidLoad()
    func viewDidAppear()
    func presentAddNewItem()
}

protocol ListViewProtocol: class {
    var presenter: ListPresenterProtocol? { get set }
    
    // PRESENTER -> VIEW
    func showItems(items: [ListItem])
    func showError()
}

protocol ListInteractorInputProtocol: class {
    var dataManager: ListDataManagerInputProtocol? { get set }
    var presenter: ListInteractorOutputProtocol? { get set }
    
    // PRESENTER -> INTERACTOR
    func getList()
}

protocol ListInteractorOutputProtocol: class {
    // INTERACTOR -> PRESENTER
    func didRetrievedList(_ list: [ListItem])
    func didReceiveError()
}


protocol ListDataManagerInputProtocol: class {
    // INTERACTOR -> DATAMANAGER
    func getList() throws -> [ListItem]
}
