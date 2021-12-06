//
//  AddTaskViewController.swift
//  ToDoList3
//
//  Created by Name on 05.12.2021.
//

import UIKit

class AddTaskViewController: BaseViewController {
    
    var completion: ((Task)->())?

    @IBOutlet weak var descriptionTextView: UITextView!
    
    @IBOutlet weak var dateTimePicker: UIDatePicker!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    
    @IBAction func saveAction(_ sender: Any) {
        let addTaskController = AddTaskController()
        
        guard let task = try? addTaskController.createTask(name: nameTextField.text, description: descriptionTextView.text, taskDate: dateTimePicker.date) else {return}
        
        completion?(task)
        self.navigationController?.popViewController(animated: true)
    }
    
}

enum AddTaskErrors: Error {
    case emptyFields
    
    var description: String {
        return "Please fill all fields"
    }
}

class AddTaskController {
    
    func createTask(name: String?, description: String?, taskDate: Date?) throws -> Task? {
        guard let name = name, let description = description, let date = taskDate else {return nil}
        
        if name.isEmpty || description.isEmpty {
            throw AddTaskErrors.emptyFields
        }
        
        let task = Task.init(title: name, description: description, taskDate: date, createdDate: Date(), status: "")
        
        return task
    }
}

