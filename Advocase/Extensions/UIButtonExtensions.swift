//
//  UIButtonExtensions.swift
//  Advocase
//
//  Created by Tushar Elangovan on 27/04/22.
//

import Foundation
import UIKit

extension UIButton{
    func isStandardBtn(bool : Bool){
        if bool{
            self.translatesAutoresizingMaskIntoConstraints = false
            self.backgroundColor = UIColor(named: "Primary")
            self.layer.cornerRadius = 10
        }
    }
    
}
