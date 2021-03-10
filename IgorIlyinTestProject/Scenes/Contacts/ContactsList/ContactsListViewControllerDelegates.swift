//
//  ContactsListViewControllerDelegates.swift
//  IgorIlyinTestProject
//
//  Created by Igor on 10.03.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

extension ContactsListViewController: UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - UITableViewDataSource -
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.contactTableViewCell.identifier, for: indexPath) as! ContactTableViewCell
        let model = users[indexPath.row]
        cell.configureCell(model: model)
        return cell
    }
    
}

extension ContactsListViewController: ContactsListDisplayLogic {
    
    func showUsers(model: [ContactsList.Users.ViewModel]) {
        // Display logic
        users = model
        tableView.reloadData()
    }
}

