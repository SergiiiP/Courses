//
//  CustomView.swift
//  ToDoList3
//
//  Created by Name on 22.10.2021.
//

import UIKit

class CustomView: BaseColorButtonView {
    
    @IBOutlet weak var LabelButton: UIButton!
    
    override func draw(_ rect: CGRect) {
//       setBackgroundColor()
    }
    
}


extension UIView{
    func setBackgroundColor(){
        backgroundColor = .orange
    }
}
