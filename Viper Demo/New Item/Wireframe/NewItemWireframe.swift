//
//  NewItemWireframe.swift
//  Viper Test
//
//  Created by Franco Castellano on 11/9/17.
//  Copyright © 2017 Castellano. All rights reserved.
//

import UIKit

class NewItemWireframe: NewItemWireframeProtocol {
    static func createNewItemModule() -> UIViewController {
        if let newItemViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NewItemViewController") as? NewItemViewController {
            let presenter: NewItemPresenterProtocol & NewItemInteractorOutputProtocol = NewItemPresenter()
            let interactor: NewItemInteractorInputProtocol = NewItemInteractor()
            let dataManager: NewItemDataManagerInputProtocol = NewItemLocalDataManager()
            let wireFrame: NewItemWireframeProtocol = NewItemWireframe()
            
            newItemViewController.presenter = presenter
            presenter.view = newItemViewController
            presenter.wireframe = wireFrame
            presenter.interactor = interactor
            interactor.presenter = presenter
            interactor.dataManager = dataManager
            
            return newItemViewController
        }
        return UIViewController()
    }
}
