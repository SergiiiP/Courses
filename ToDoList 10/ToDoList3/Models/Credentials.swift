//
//  Credentials.swift
//  ToDoList3
//
//  Created by Name on 31.10.2021.
//

import Foundation

class Credentials: CredentialsInterface {
    var email: String?
    var password: String?
    
    init(email: String?, password: String?) {
            self.email = email
            self.password = password
        
        }
   
    
    func validate() -> Bool {
        if let email = self.email,
           let password = self.password {
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

class LoginCredentials: Credentials {
    private var expectedEmail: String = "test@gmail.com"
    private var expectedPassword: String = "123456789"
    
    override init(email: String?, password: String?) {
        super.init(email: email, password: password)
    }
    
   
   
    override func validate() -> Bool {
        let isValid = super.validate()
        return isValid ?
            (self.email == expectedEmail && self.password == expectedPassword) : false
    }
}
