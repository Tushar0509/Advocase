//
//  File.swift
//  Advocase
//
//  Created by Tushar Elangovan on 16/03/22.
//

import Foundation
import UIKit

class NoMeetingTableViewCell: UITableViewCell {
    
    lazy var noNotificationDogImageView: UIImageView = {
        let l = UIImageView()
        l.image = UIImage(named: "NoMeetingsDog")
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    lazy var noNotificationImageView: UIImageView = {
        let l = UIImageView()
        l.image = UIImage(named: "No notifications")
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    func setupCell(){
        contentView.addSubview(noNotificationDogImageView)
        NSLayoutConstraint.activate([
            
            noNotificationDogImageView.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor, constant: contentView.frame.height/4),
            noNotificationDogImageView.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor, constant: contentView.frame.width/4),
            noNotificationDogImageView.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor, constant: -contentView.frame.width/4),
            noNotificationDogImageView.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor, constant: -contentView.frame.height/3)
        
        
        ])
        
        contentView.addSubview(noNotificationImageView)
        NSLayoutConstraint.activate([
        
            noNotificationImageView.topAnchor.constraint(equalTo: noNotificationDogImageView.layoutMarginsGuide.bottomAnchor, constant: 5),
            noNotificationImageView.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor, constant: contentView.frame.width/4),
            noNotificationImageView.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor, constant: -contentView.frame.width/4),
            noNotificationImageView.heightAnchor.constraint(equalToConstant: 30)
    
        ])
    }
    
    
    
}


