//
//  RoundedButtonStyle.swift
//  ToDoList3
//
//  Created by Name on 22.10.2021.
//

import Foundation
import UIKit

extension UIButton {
    func setRoundedStyle() {
        setBackgroundColor()
        layer.cornerRadius = frame.height / 2
        titleLabel?.textColor = .white
    }
}
