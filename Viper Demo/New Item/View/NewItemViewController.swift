//
//  NewItemViewController.swift
//  Viper Test
//
//  Created by Franco Castellano on 11/9/17.
//  Copyright © 2017 Castellano. All rights reserved.
//

import UIKit

class NewItemViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    var presenter: NewItemPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
    
    @IBAction func savePressed(_ sender: Any) {
        self.saveItem(self.textField.text!)
    }
}

extension NewItemViewController: NewItemViewProtocol {
    func saveItem(_ name: String) {
        presenter?.addNewItem(name: name)
    }
    
    func showSuccess() {
        self.navigationController?.popViewController(animated: true)
        print("success")
    }
}
