//
//  RegistrationViewController.swift
//  ToDoList3
//
//  Created by Name on 21.10.2021.
//

import UIKit

class RegistrationViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .hexToColor(hex: "aaaee9")
        
    }
    

    @IBOutlet weak var txtEmail: UITextField!
    
    
    @IBOutlet weak var txtPassword: UITextField!
    
    
    @IBAction func Registration(_ sender: UIButton) {
    }
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if let email = txtEmail.text,
           let password = txtPassword.text {
            
            if email.contains("@") {
                if password.count > 8 {
                    return true
                }
            }
        }
        return false
    }

}
