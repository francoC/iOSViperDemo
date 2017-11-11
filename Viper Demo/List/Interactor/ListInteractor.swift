//
//  ListInteractor.swift
//  Viper Test
//
//  Created by Franco Castellano on 11/9/17.
//  Copyright © 2017 Castellano. All rights reserved.
//

import UIKit

class ListInteractor: ListInteractorInputProtocol {
    var dataManager: ListDataManagerInputProtocol?
    weak var presenter: ListInteractorOutputProtocol?
    
    func getList() {
        do {
            if let list = try dataManager?.getList() {
                presenter?.didRetrievedList(list)
            } else {
                presenter?.didReceiveError()
            }
        } catch {
            presenter?.didRetrievedList([])
        }
    }
}
