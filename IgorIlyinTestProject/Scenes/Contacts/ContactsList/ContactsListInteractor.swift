//
//  ContactsListInteractor.swift
//  IgorIlyinTestProject
//
//  Created by Igor on 10.03.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

protocol ContactsListBusinessLogic {
    func getUsers()
}

protocol ContactsListDataStore {
    
}

class ContactsListInteractor: ContactsListBusinessLogic, ContactsListDataStore {
    
    var presenter: ContactsListPresentationLogic?
    var worker: ContactsListWorker?
    
    // MARK: - ContactsListBusinessLogic -
    func getUsers() {
        APIManager.shared.loadUsers { users in
            self.presenter?.handleUsers(response: ContactsList.Users.Response(users: users ?? [UserModel]()))
        }
    }
    
    
}
