//
//  ListWireframe.swift
//  Viper Test
//
//  Created by Franco Castellano on 11/9/17.
//  Copyright © 2017 Castellano. All rights reserved.
//

import UIKit

class ListWireframe: ListWireframeProtocol {
    static func createListModule() -> UIViewController {
        let navController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NavigationController")
        if let view = navController.childViewControllers.first as? ListViewController {
            let presenter: ListPresenterProtocol & ListInteractorOutputProtocol = ListPresenter()
            let interactor: ListInteractorInputProtocol = ListInteractor()
            let dataManager: ListDataManagerInputProtocol = ListLocalDataManager()
            let wireFrame: ListWireframeProtocol = ListWireframe()
            
            view.presenter = presenter
            presenter.view = view
            presenter.wireframe = wireFrame
            presenter.interactor = interactor
            interactor.presenter = presenter
            interactor.dataManager = dataManager
            
            return navController
        }
        return UIViewController()
    }
    
    func presentAddNewItem(sourceView: ListViewProtocol) {
        let newItemViewContoller = NewItemWireframe.createNewItemModule()
        
        if let sourceView = sourceView as? UIViewController {
            sourceView.navigationController?.pushViewController(newItemViewContoller, animated: true)
        }
    }
}
