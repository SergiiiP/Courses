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
        
        let credentialController = CredentialsController(credentials: Credentials(email: txtEmail.text, password: txtPassword.text))
        
        return credentialController.validate() && credentialController.checkCredentials()
            
        
        }
    
    
   
    
  
}
    
        
     
    

