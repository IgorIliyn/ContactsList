//
//  ContactsListModels.swift
//  IgorIlyinTestProject
//
//  Created by Igor on 10.03.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

enum ContactsList {
    
    // MARK: Use cases
    
    enum Users {
        struct Response {
            let users: [UserModel]
        }
        
        struct ViewModel {
            let firstName: String
            let lastName: String
            let email: String
        }
    }
}
