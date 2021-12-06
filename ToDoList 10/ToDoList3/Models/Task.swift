//
//  Task.swift
//  ToDoList3
//
//  Created by Name on 31.10.2021.
//

import Foundation

class Task {
    var title: String?
    var description: String?
    var taskDate: Date
    var createdDate: Date
    var status: String
    
    init(title: String?, description: String?, taskDate: Date, createdDate: Date, status: String) {
        self.title = title
        self.description = description
        self.taskDate = taskDate
        self.createdDate = createdDate
        self.status = status
    }
    
    func toDict() -> [String : Any] {
        ["title": title, "description" : description, "taskDate" : taskDate, "createdDate" : createdDate, "status" : status]
    }
    
    static func read(from dict: [String : Any]) -> Task {
        Task.init(title: dict["title"] as! String, description: dict["description"] as! String, taskDate: dict["taskDate"] as! Date, createdDate: dict["createdDate"] as! Date, status: dict["status"] as! String)
    }
}


