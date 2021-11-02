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
           return Credentials(email: txtEmail.text, password: txtPassword.text).validate()
       }

}
