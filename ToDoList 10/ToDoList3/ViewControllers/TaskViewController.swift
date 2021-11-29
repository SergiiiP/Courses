//
//  TaskViewController.swift
//  ToDoList3
//
//  Created by Name on 28.10.2021.
//

import UIKit

class TaskViewController: BaseViewController, UITextFieldDelegate, UITextViewDelegate {
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleTextField.delegate = self
        descriptionTextView.delegate = self
        
        let tapGesture = UITapGestureRecognizer.init(target: self, action: #selector(hideKeyboard))
        
        view.isUserInteractionEnabled = true
        view.addGestureRecognizer(tapGesture)
        
        
        let editTextView = UITapGestureRecognizer.init(target: self, action: #selector(editTextView))
        
        descriptionTextView.isUserInteractionEnabled = true
        descriptionTextView.addGestureRecognizer(editTextView)
        
    }
    
    @objc func hideKeyboard(){
        view.endEditing(true)
    }
    
    @objc func editTextView() {
        descriptionTextView.isEditable = true
        descriptionTextView.becomeFirstResponder()
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        view.endEditing(true)
        return true
    }
    
    func textViewDidEndEditing(_ textView: UITextView){
        textView.isEditable = false
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
