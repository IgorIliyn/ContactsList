//
//  ContactsListPresenter.swift
//  IgorIlyinTestProject
//
//  Created by Igor on 10.03.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

protocol ContactsListPresentationLogic {
    func handleUsers(response: ContactsList.Users.Response)
}

class ContactsListPresenter: ContactsListPresentationLogic {
    
    weak var viewController: ContactsListDisplayLogic?
    
    // MARK: - ContactsListPresentationLogic -
    func handleUsers(response: ContactsList.Users.Response) {
        let models = getViewModels(response: response)
        viewController?.showUsers(model: models)
    }
}

private extension ContactsListPresenter {
    
    func getViewModels(response: ContactsList.Users.Response) -> [ContactsList.Users.ViewModel] {
        response.users.map { model in
            return ContactsList.Users.ViewModel(firstName: model.name.firstName, lastName: model.name.lastName, email: model.email)
        }
    }
}
