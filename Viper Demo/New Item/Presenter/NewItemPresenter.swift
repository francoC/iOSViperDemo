//
//  NewItemPresenter.swift
//  Viper Test
//
//  Created by Franco Castellano on 11/9/17.
//  Copyright © 2017 Castellano. All rights reserved.
//

import UIKit

class NewItemPresenter: NewItemPresenterProtocol {
    weak var view: NewItemViewProtocol?
    var interactor: NewItemInteractorInputProtocol?
    var wireframe: NewItemWireframeProtocol?
    
    func viewDidLoad() {
        //NOTHING
    }
    
    func addNewItem(name: String) {
        interactor?.addItem(name)
    }
}

extension NewItemPresenter: NewItemInteractorOutputProtocol {
    func didAddItem() {
        view?.showSuccess()
    }
}
