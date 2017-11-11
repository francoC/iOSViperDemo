//
//  ListPresenter.swift
//  Viper Test
//
//  Created by Franco Castellano on 11/9/17.
//  Copyright © 2017 Castellano. All rights reserved.
//

import UIKit

class ListPresenter: ListPresenterProtocol {
    weak var view: ListViewProtocol?
    var interactor: ListInteractorInputProtocol?
    var wireframe: ListWireframeProtocol?
    
    func viewDidLoad() {
        //interactor?.getList()
    }
    
    func viewDidAppear() {
        interactor?.getList()
    }
    
    func presentAddNewItem() {
        wireframe?.presentAddNewItem(sourceView: view!)
    }
}

extension ListPresenter: ListInteractorOutputProtocol {
    func didRetrievedList(_ list: [ListItem]) {
        view?.showItems(items: list)
    }
    
    func didReceiveError() {
        view?.showError()
    }
}
