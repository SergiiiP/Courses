//
//  CredentialValidation.swift
//  ToDoList3
//
//  Created by Name on 31.10.2021.
//

import Foundation

protocol CredentialsInterface {
    var email: String? { get set }
    var password: String? { get set }
    
    func validate() -> Bool
}
