//
//  MasterTabBarViewController.swift
//  Advocase
//
//  Created by Tushar Elangovan on 17/03/22.
//

import UIKit

class MasterTabBarViewController: UITabBarController {
    
    fileprivate func setupTabs(){
        let homeVC = HomeViewController()
        
    }
    
    fileprivate func setupLayout(){
        tabBar.isTranslucent = false
        tabBar.barTintColor = UIColor.black
        tabBar.tintColor = UIColor(named: "Color-1")

        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
