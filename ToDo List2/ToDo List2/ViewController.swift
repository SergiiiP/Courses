//
//  ViewController.swift
//  ToDo List2
//
//  Created by Name on 17.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var lblValidationMessage: UILabel!
    
    let expectedEmail: String = "test@gmail.com"
    let expectedPassword: String = "1234qwer5"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginUser(_ sender: Any) {
        if let email = txtEmail.text,
           let password = txtPassword.text{
            if email.contains("@"){
                if password.count > 8{
                    if email == expectedEmail{
                        if password == expectedPassword{
                            lblValidationMessage.text = "Success"
//                            print("Success")
                        } else {
                            lblValidationMessage.text = "Fail: wrong password"
//                            print("Fail: wrong password")
                        }
                     } else {
                         lblValidationMessage.text = "Fail: wrong email"
//                            print("Fail: wrong email")
                        }
                    } else {
                        lblValidationMessage.text = "Fail: password must be at least 8 symbols"
//                        print("Fail: password must be at least 8 symbols")
                    }
                } else {
                    lblValidationMessage.text = "Fail: wrong email format"
                    
//                print("Fail: wrong email format")
            }
        } else {
            lblValidationMessage.text = "Fail: empty fields"
//        print("Fail: empty fields")
    }

}
    

}
