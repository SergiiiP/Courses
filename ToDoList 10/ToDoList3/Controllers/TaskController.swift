//
//  TaskController.swift
//  ToDoList3
//
//  Created by Name on 07.11.2021.
//

import Foundation

class TaskController{
    private var tasks: [Task] = [
        Task.init(title: "Some title", description: "Description1", taskDate: Date(), createdDate: Date(), status: "Done"),
        Task.init(title: "1 Some title", description: "Description2", taskDate: Date(), createdDate: Date(), status:"Progress"),
        Task.init(title: "2 Some title", description: "Description3", taskDate: Date(), createdDate: Date(), status: "Progress"),
        Task.init(title: "3 Some title", description: "Description4", taskDate: Date(), createdDate: Date(), status: "Progress"),
        Task.init(title: "New Title", description: "Description5", taskDate: Date(), createdDate: Date(), status: "Progress"),
        Task.init(title: "Task", description: "Description6", taskDate: Date(), createdDate: Date(), status: "Done"),
        Task.init(title: "Read Book", description: "Description7", taskDate: Date(), createdDate: Date(), status: "Done"),
        Task.init(title: "Jump", description: "Description8", taskDate: Date(), createdDate: Date(), status: "Progress"),
        Task.init(title: "Sport", description: "Description9", taskDate: Date(), createdDate: Date(), status: "Done"),
        Task.init(title: "Run", description: "Description10", taskDate: Date(), createdDate: Date(), status: "Progress"),
    ]
    
    
    
    func search(by title: String) -> [Task] {
        return tasks.filter { task in
            return (task.title != nil) ? task.title!.contains(title) : false
        }
    }
    
    func add(new task: Task) {
        tasks.append(task)
    }
    
    func filter(by status: String) -> [Task] {
        return tasks.filter { task in
            return task.status == status
        }
    }
    
    func sortByDateNewest() -> [Task] {
        tasks.sort { task1, task2 in
            task1.createdDate < task2.createdDate
        }
        
        return tasks
    }
    
    func sortByDateOldest() -> [Task] {
        tasks.sort { task1, task2 in
            task1.createdDate > task2.createdDate
        }
        
        return tasks
    }
    
    func sortByTaskDateNewest() -> [Task] {
        tasks.sort { task1, task2 in
            task1.taskDate < task2.taskDate
        }
        
        return tasks
    }
    
    func sortByTaskDateOldest() -> [Task] {
        tasks.sort { task1, task2 in
            task1.taskDate > task2.taskDate
        }
        
        return tasks
    }
    
    

}
