//
//  AllNotesTableViewCell.swift
//  Advocase
//
//  Created by Tushar Elangovan on 08/02/22.
//

import UIKit

class AllNotesTableViewCell: UITableViewCell {
    
    lazy var iconImg: UIImageView = {
        let l = UIImageView()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.backgroundColor = .red
        l.layer.cornerRadius = 10
        return l
    }()
    
    lazy var lblTitle: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Case 49"
        l.adjustsFontSizeToFitWidth = true
        l.textColor = UIColor(named: "Primary")
        l.font = UIFont.preferredFont(forTextStyle: .title2)
        return l
    }()
    
    lazy var lblSubTitle: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Edited 5:12pm"
        l.textColor = UIColor(named: "Primary")
        l.font = UIFont.preferredFont(forTextStyle: .body)
        l.adjustsFontSizeToFitWidth = true
        return l
    }()
    
    
    
    
    func setupIcon(){
        NSLayoutConstraint.activate([
        
            iconImg.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
            iconImg.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor),
            iconImg.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor),
            iconImg.widthAnchor.constraint(equalToConstant: contentView.frame.width/4)
        
        ])
    }
    
    func setuplblTitle(){
        NSLayoutConstraint.activate([
        
            lblTitle.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
            lblTitle.leadingAnchor.constraint(equalTo: iconImg.trailingAnchor, constant: 10),
            lblTitle.heightAnchor.constraint(equalToConstant: contentView.frame.height/3),
            lblTitle.widthAnchor.constraint(equalToConstant: contentView.frame.width/3)
        
        ])
    }
    
    func setupLblSubTitle(){
        NSLayoutConstraint.activate([
        
            lblSubTitle.topAnchor.constraint(equalTo: lblTitle.layoutMarginsGuide.bottomAnchor, constant: 5),
            lblSubTitle.leadingAnchor.constraint(equalTo: iconImg.trailingAnchor, constant: 10),
            lblSubTitle.heightAnchor.constraint(equalToConstant: contentView.frame.height/4),
            lblSubTitle.widthAnchor.constraint(equalToConstant: contentView.frame.width/2)
        
        
        
        ])
    }
    
    
    func setupLayout(){
        contentView.addSubview(iconImg)
        contentView.addSubview(lblTitle)
        contentView.addSubview(lblSubTitle)
        
        setupIcon()
        setuplblTitle()
        setupLblSubTitle()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
