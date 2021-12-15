//
//  RegistrationViewController.swift
//  ToDoList3
//
//  Created by Name on 21.10.2021.
//

import UIKit

class RegistrationViewController: BaseViewController, UITextFieldDelegate {

    
    

    @IBOutlet weak var txtEmail: UITextField!
    
    
    @IBOutlet weak var txtPassword: UITextField!
    
    
    @IBAction func Registration(_ sender: UIButton) {
    }
    
    @IBOutlet weak var registrationButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registrationButton.layer.cornerRadius = 12
        txtEmail.delegate = self
        txtPassword.delegate = self
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let creds =  CredentialsController(credentials: Credentials(email: txtEmail.text,
                                                                    password: txtPassword.text))
        
        do {
            try creds.validate()
            return true
        } catch {
            return false
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }

}
