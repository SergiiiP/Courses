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
    
    

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    
}
