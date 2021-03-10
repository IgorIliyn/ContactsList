//
//  ContactsListInteractor.swift
//  IgorIlyinTestProject
//
//  Created by Igor on 10.03.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

protocol ContactsListBusinessLogic {
    
}

protocol ContactsListDataStore {
    
}

class ContactsListInteractor: ContactsListBusinessLogic, ContactsListDataStore {
    
    var presenter: ContactsListPresentationLogic?
    var worker: ContactsListWorker?
    
    // MARK:
    
    
}
