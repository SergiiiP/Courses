//
//  LoginViewController.swift
//  ToDoList3
//
//  Created by Name on 21.10.2021.
//

import UIKit

protocol Base{
    func prepareUI()
}

class LoginViewController: BaseViewController, Base {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registrationButton: UIButton!
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var ToDoList: UILabel!
    
    @IBOutlet weak var MessageLabel: UILabel!
    
    let expectedEmail: String = "test@gmail.com"
    let expectedPassword: String = "1234qwer5"
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
    }
    
    func prepareUI() {
        loginButton.setRoundedStyle()
        registrationButton.setRoundedStyle()
    }
    @IBAction func loginUser(_ sender: Any) {
        if let email = txtEmail.text,
           let password = txtPassword.text{
            if email.contains("@"){
                if password.count > 8{
                    if email == expectedEmail{
                        if password == expectedPassword{
                            MessageLabel.text = "Success"
//                            print("Success")
                        } else {
                            MessageLabel.text = "Fail: wrong password"
//                            print("Fail: wrong password")
                        }
                     } else {
                         MessageLabel.text = "Fail: wrong email"
//                            print("Fail: wrong email")
                        }
                    } else {
                        MessageLabel.text = "Fail: password must be at least 8 symbols"
//                        print("Fail: password must be at least 8 symbols")
                    }
                } else {
                    MessageLabel.text = "Fail: wrong email format"
                    
//                print("Fail: wrong email format")
            }
        } else {
            MessageLabel.text = "Fail: empty fields"
//        print("Fail: empty fields")
    }

}
    
    
    

}
