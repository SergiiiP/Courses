//
//  CredentialsController.swift
//  ToDoList3
//
//  Created by Name on 21.11.2021.
//

import Foundation

class CredentialsController{
    var credentials: Credentials
    init(credentials: Credentials){
        self.credentials = credentials
    }
    
    let expectedCredentials: Credentials = Credentials.init(email: "test@gmail.com", password: "123456789")
    
    func checkCredentials() -> Bool {
        return credentials.email == expectedCredentials.email && credentials.password == credentials.password
    }
    
    func validate() -> Bool {
        if let email = credentials.email,
           let password = credentials.password {
            if email.contains("@") {
                if password.count > 8 {
                   print ("Right Format")
                    return true
                } else {
                    print ("Fail: password must be at least 8 symbols")
                }
            } else {
                print ("Fail: wrong email format")
            }
        } else {
            print ("Fail: empty fields")
        }
        return false
    }
    
    
}
