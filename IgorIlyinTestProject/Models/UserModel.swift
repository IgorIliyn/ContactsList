//
//  UserModel.swift
//  IgorIlyinTestProject
//
//  Created by Igor on 10.03.2021.
//

import Foundation

struct Results: Codable {
    let results: [UserModel]
}

struct UserModel: Codable {
    let name: Name
    let email: String
}

struct Name: Codable {
    let firstName: String
    let lastName: String
    
    enum CodingKeys: String, CodingKey {
        case firstName = "first"
        case lastName = "last"
    }
}
