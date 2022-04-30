//
//  OpenCasesTableViewCell.swift
//  Advocase
//
//  Created by Tushar Elangovan on 08/02/22.
//

import UIKit

class OpenCasesTableViewCell: UITableViewCell {
    
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
        l.text = "#35627df"
        l.adjustsFontSizeToFitWidth = true
        l.textColor = UIColor(named: "Primary")
        l.font = UIFont.boldSystemFont(ofSize: 30)
        return l
    }()
    
    lazy var lblSubTitle: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Anirudh Murder Case"
        l.textColor = UIColor(named: "Primary")
        l.font = UIFont.preferredFont(forTextStyle: .title3)
        l.adjustsFontSizeToFitWidth = true
        return l
    }()
    
    lazy var lblClass: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Class Action"
        l.textColor = UIColor.gray
        l.font = UIFont.preferredFont(forTextStyle: .title3)
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
    
    func setupLblClass(){
        NSLayoutConstraint.activate([
        
            lblClass.topAnchor.constraint(equalTo: lblSubTitle.layoutMarginsGuide.bottomAnchor, constant: 5),
            lblClass.leadingAnchor.constraint(equalTo: iconImg.trailingAnchor, constant: 10),
         //   lblClass.heightAnchor.constraint(equalToConstant: contentView.frame.height/4),
            lblClass.widthAnchor.constraint(equalToConstant: contentView.frame.width/2),
            lblClass.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor),
        
        
        
        ])
    }
    
    func setupLayout(){
        contentView.addSubview(iconImg)
        contentView.addSubview(lblTitle)
        contentView.addSubview(lblSubTitle)
        contentView.addSubview(lblClass)
        
        setupIcon()
        setuplblTitle()
        setupLblSubTitle()
        setupLblClass()
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
