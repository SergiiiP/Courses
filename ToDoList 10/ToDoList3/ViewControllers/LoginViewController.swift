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

class LoginViewController: BaseViewController, Base, UITextFieldDelegate {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registrationButton: UIButton!
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var ToDoList: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 12
        
        registrationButton.layer.cornerRadius = 12
        
        txtEmail.delegate = self
        
        txtPassword.delegate = self
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
        
        do {
            try credentialController.validate()
            try credentialController.checkCredentials()
            return true
        } catch {
            resultLabel.text = (error as! CredentialsError).description
            return false
        }
        
        
        }
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    view.endEditing(true)
    return true
}
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let isLoggedIn = UserDefaults.standard.value(forKey: "isLoggedIn") as? Bool else {return}
        if isLoggedIn {
            performSegue(withIdentifier: "fromLoginToTaskList", sender: self)
        }
    }
    
    
    
}
       
          
    
    
    
   

    
        
     
    

