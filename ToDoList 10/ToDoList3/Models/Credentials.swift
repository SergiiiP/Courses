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
    var message: String? = ""
   
    
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
    let expectedEmail: String = "test@gmail.com"
    let expectedPassword: String = "123456789"
    
    func returnMessage() -> String {
        if let email = self.email,
                   let password = self.password {
                    
                    if email.contains("@") {
                        if password.count > 8 {
                            if email == expectedEmail {
                                if password == expectedPassword {
                                    message = "Success"
                                } else {
                                   message = "Fail: wrong password"
                                }
                            } else {
                                message =  "Fail: wrong email"
                            }
                        } else {
                            message = "Fail: password must be at least 8 symbols"
                        }
                    } else {
                       message = "Fail: wrong email format"
                    }
                } else {
                   message =  "Fail: empty fields"
                }
                return message!
            }
    
    
   
    override func validate() -> Bool {
        let isValid = super.validate()
        return isValid ?
            (self.email == expectedEmail && self.password == expectedPassword) : false
    }
}
