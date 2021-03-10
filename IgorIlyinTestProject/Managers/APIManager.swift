//
//  APIManager.swift
//  IgorIlyinTestProject
//
//  Created by Igor on 10.03.2021.
//

import Foundation

fileprivate let contactsListURL = URL(string: "https://randomuser.me/api/?results=200")! //200 hardcoded just for test

class APIManager {
    
    // Singleton
    static let shared = APIManager()
    
    private let session: URLSession
    
    private init() {
        session = URLSession(configuration: .default)
    }
    
    func loadUsers(completion: @escaping ([UserModel]?) -> Void) {
        session.dataTask(with: contactsListURL) { (data, response, error) in
            guard let _ = response?.isSuccess(), let responseData = data else {
                completion(nil)
                return
            }
            
            do {
                let result = try JSONDecoder().decode(Results.self, from: responseData)
                DispatchQueue.main.async {
                    completion(result.results)
                }
            } catch {
                DispatchQueue.main.async {
                    completion(nil)
                }
            }
        }.resume()
    }
}
