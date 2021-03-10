//
//  ContactDetailsInteractor.swift
//  IgorIlyinTestProject
//
//  Created by Igor on 10.03.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

protocol ContactDetailsBusinessLogic {
    
}

protocol ContactDetailsDataStore {
    
}

class ContactDetailsInteractor: ContactDetailsBusinessLogic, ContactDetailsDataStore {
    
    var presenter: ContactDetailsPresentationLogic?
    var worker: ContactDetailsWorker?
    
    // MARK:
    
    
}
