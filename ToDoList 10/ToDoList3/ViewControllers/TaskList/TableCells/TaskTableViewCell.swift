//
//  TaskTableViewCell.swift
//  ToDoList3
//
//  Created by Name on 09.11.2021.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

    @IBOutlet weak var createdDateLabel: UILabel!
    @IBOutlet weak var startDateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func fill(with model: Task) {
        titleLabel.text = model.title
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, MMMM d, HH:mm"
        let taskDateString = dateFormatter.string(from: model.taskDate)
        let createdDateString = dateFormatter.string(from: model.createdDate)
        
        startDateLabel.text = "start day" + " " + taskDateString
        createdDateLabel.text = "create day" + " " + createdDateString
    }
}
