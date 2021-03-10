//
//  ContactDetailsRouter.swift
//  IgorIlyinTestProject
//
//  Created by Igor on 10.03.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

@objc protocol ContactDetailsRoutingLogic {
    
}

protocol ContactDetailsDataPassing {
    var dataStore: ContactDetailsDataStore? { get }
}

class ContactDetailsRouter: NSObject, ContactDetailsRoutingLogic, ContactDetailsDataPassing {
    
    weak var viewController: ContactDetailsViewController?
    var dataStore: ContactDetailsDataStore?
    
    // MARK: Routing
    
}
