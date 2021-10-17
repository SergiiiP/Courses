//
//  ViewController.swift
//  ToDo List
//
//  Created by Name on 15.10.2021.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var applicationTitle: UILabel!
    @IBAction func loginButton(_ sender: Any){
        
    }
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let epectedEmail: String = "test@gmail.com"
    let expectedPassword: String = "1234qwer5"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

