//
//  MasterNavigationTabBarController.swift
//  Advocase
//
//  Created by Tushar Elangovan on 17/03/22.
//

import UIKit

class MasterNavigationBarController: UINavigationController {
    
    private var themedStatusBarStyle: UIStatusBarStyle?
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return themedStatusBarStyle ?? UIStatusBarStyle.lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        themedStatusBarStyle = .lightContent
        setNeedsStatusBarAppearanceUpdate()
        
        navigationBar.barTintColor = UIColor.black
        navigationBar.tintColor = UIColor.purple
        
        navigationBar.isTranslucent = false
        navigationBar.shadowImage = UIImage()
        navigationBar.setValue(true, forKey: "hidesShadow")
        
        let titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]
        navigationBar.titleTextAttributes = titleTextAttributes
        navigationBar.largeTitleTextAttributes = titleTextAttributes
    }
}

