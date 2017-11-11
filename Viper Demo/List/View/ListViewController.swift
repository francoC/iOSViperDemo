//
//  ViewController.swift
//  Viper Test
//
//  Created by Franco Castellano on 11/9/17.
//  Copyright © 2017 Castellano. All rights reserved.
//

import UIKit


class ListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: ListPresenterProtocol?
    var listItems: [ListItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //presenter?.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presenter?.viewDidAppear()
    }
    
    @IBAction func addButtonPressed(_ sender: Any) {
        presenter?.presentAddNewItem()
    }
}

extension ListViewController: ListViewProtocol {
    func showItems(items: [ListItem]) {
        self.listItems = items
        self.tableView.reloadData()
    }
    
    func showError() {
        
    }
}

extension ListViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let item = self.listItems[indexPath.row]
        cell.textLabel?.text = item.name
        
        return cell
    }
}
