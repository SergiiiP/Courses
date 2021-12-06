//
//  CredentialsController.swift
//  ToDoList3
//
//  Created by Name on 21.11.2021.
//

import Foundation

class CredentialsController {
    
    var credentials: Credentials
    let expectedCredentials: Credentials = Credentials.init(email: "test@gmail.com", password: "123456789")
    
    init(credentials: Credentials) {
        self.credentials = credentials
    }
    
    func validate() throws {
        if let email = credentials.email,
           let password = credentials.password {
            if email.contains("@") {
                if password.count > 8 {
                    print("Right Format")
                    
                } else {
                    print("Fail: password must be at least 8 symbols")
                    throw CredentialsError.lowPassword
                }
            } else {
                print("Fail: wrong email format")
                throw CredentialsError.wrongEmailFormat
            }
        } else {
            print( "Fail: empty fields")
            throw CredentialsError.emptyFields
        }
    }
    
    func checkCredentials() throws {
        if credentials.email == expectedCredentials.email &&
            credentials.password == credentials.password {} else {
                throw CredentialsError.wrongCredentials
            }
    }
}
