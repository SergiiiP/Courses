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
        
    }
    
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
            if identifier != "fromLoginToTaskList" {
                return true
            }
            
            return LoginCredentials(email: txtEmail.text, password: txtPassword.text).validate()
            
        
        }
    
    
   
    
  
}
    
        
     
    

