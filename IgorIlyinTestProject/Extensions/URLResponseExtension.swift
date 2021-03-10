//
//  URLResponseExtension.swift
//  IgorIlyinTestProject
//
//  Created by Igor on 10.03.2021.
//

import Foundation

enum SuccessCode: Int {
    case success = 200
    
    static func isSuccessCode(code:Int) -> Bool {
        for success in 200..<299 {
            if code == success {
                return true
            }
        }
        return false
    }
}

extension URLResponse {
    //Check response status code in range from 200 - 299
    func isSuccess() -> Bool {
        guard let response = self as? HTTPURLResponse else { return false }
        return SuccessCode.isSuccessCode(code: response.statusCode)
    }
}
