//
//  ContactsListRouter.swift
//  IgorIlyinTestProject
//
//  Created by Igor on 10.03.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

@objc protocol ContactsListRoutingLogic {
    
}

protocol ContactsListDataPassing {
    var dataStore: ContactsListDataStore? { get }
}

class ContactsListRouter: NSObject, ContactsListRoutingLogic, ContactsListDataPassing {
    
    weak var viewController: ContactsListViewController?
    var dataStore: ContactsListDataStore?
    
    // MARK: Routing
    
}
