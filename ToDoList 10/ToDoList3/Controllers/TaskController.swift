//
//  TaskController.swift
//  ToDoList3
//
//  Created by Name on 07.11.2021.
//

import Foundation

class TaskController {
    
    private var tasks: [Task] = []
    
    func saveTasksToLocalStorage() {
        var tasksParsedDicts: [[String : Any]] = []
        tasks.forEach { task in
            tasksParsedDicts.append(task.toDict())
        }
        UserDefaults.standard.set(tasksParsedDicts, forKey: "tasksParsedDicts")
    }
    
    func readFromLocalStorage() {
        guard let tasksParsedDicts = UserDefaults.standard.value(forKey: "tasksParsedDicts") as? [[String : Any]] else {return}
        
        var tasks: [Task] = []
        
        tasksParsedDicts.forEach { dict in
            tasks.append(Task.read(from: dict))
        }
        
        self.tasks = tasks
    }
    
    func tasksCount() -> Int {
        return tasks.count
    }
    
    func task(by index: Int) -> Task {
        return tasks[index]
    }
    
    func add(new task: Task) {
        tasks.append(task)
        
        saveTasksToLocalStorage()
    }
    
    func remove(by index: Int) {
        tasks.remove(at: index)
        
        saveTasksToLocalStorage()
    }
    
    func search(by title: String) -> [Task] {
        return tasks.filter { task in
            return (task.title != nil) ? task.title!.contains(title) : false
        }
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
}
