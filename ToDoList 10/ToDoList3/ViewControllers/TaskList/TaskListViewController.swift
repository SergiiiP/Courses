//
//  TaskListViewController.swift
//  ToDoList3
//
//  Created by Name on 28.10.2021.
//

import UIKit

class TaskListViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let taskController = TaskController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.isHidden = true
        
        prepareTableView()
    }
    
    func prepareTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib.init(nibName: "TaskTableViewCell", bundle: nil), forCellReuseIdentifier: "TaskCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskController.tasksCount()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell") as! TaskTableViewCell
        
        cell.fill(with: taskController.task(by: indexPath.row))
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            taskController.remove(by: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
