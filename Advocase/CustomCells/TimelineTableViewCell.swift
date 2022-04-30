//
//  TimelineTableViewCell.swift
//  Advocase
//
//  Created by Tushar Elangovan on 04/02/22.
//

import UIKit

class TimelineTableViewCell: UITableViewCell {
    
    lazy var viewBG: UIView = {
       let l = UIView()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.backgroundColor = UIColor(named: "BG")
        l.layer.cornerRadius = 10
        
        return l
    }()
    
    lazy var lblTitle: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        l.textColor = UIColor(named: "Primary")
        l.adjustsFontSizeToFitWidth = true
        l.text = "Meet with client"
     //   l.backgroundColor = .green
        return l
    }()
    
    lazy var lblDateTime: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.font = UIFont.preferredFont(forTextStyle: .title3)
        l.textColor = UIColor(named: "Primary")
        l.adjustsFontSizeToFitWidth = true
        l.text = "30th Jan, 03:30pm"
       // l.backgroundColor = .red
        return l
    }()
    
    lazy var iconBell: UIImageView = {
        let l = UIImageView()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.image = UIImage(systemName: "bell")
        l.contentMode = .scaleAspectFill
        return l
    }()
    
    lazy var lblDismmiss: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Dismiss"
        l.textColor = .red
       // l.backgroundColor = .yellow
        l.textAlignment = .center
        l.font =  UIFont.preferredFont(forTextStyle: .title3)
        l.adjustsFontSizeToFitWidth = true
        return l
    }()
    
    lazy var lblMiddleLine: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "|"
        l.textColor = .black
       // l.backgroundColor = .yellow
        l.textAlignment = .center
        l.font =  UIFont.preferredFont(forTextStyle: .title3)
        l.adjustsFontSizeToFitWidth = true
        return l
    }()
    
    lazy var lblDetails: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Details"
        l.textColor = UIColor(named: "Primary")
       // l.backgroundColor = .red
        l.textAlignment = .center
        l.font =  UIFont.preferredFont(forTextStyle: .title3)
        l.adjustsFontSizeToFitWidth = true
        l.layer.addBorder(side: .left, thickness: 1.0, color: UIColor.black.cgColor)
        return l
    }()
    
    
    func setupView(){
        NSLayoutConstraint.activate([
        
            viewBG.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor, constant: 2),
            viewBG.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor, constant: -5),
            viewBG.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor, constant: 5),
            viewBG.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor, constant: -2)
                
        ])
    }
    
    func setupLblTitle(){
        NSLayoutConstraint.activate([
        
            lblTitle.topAnchor.constraint(equalTo: viewBG.layoutMarginsGuide.topAnchor),
            lblTitle.leadingAnchor.constraint(equalTo: viewBG.layoutMarginsGuide.leadingAnchor, constant: 5),
            lblTitle.trailingAnchor.constraint(equalTo: viewBG.layoutMarginsGuide.trailingAnchor, constant: -contentView.frame.width/2.5),
           // lblTitle.widthAnchor.constraint(equalToConstant: contentView.frame.width/2),
            lblTitle.heightAnchor.constraint(equalToConstant: contentView.frame.height/3)
        ])
    }
    
    func setupLblDateTime(){
        NSLayoutConstraint.activate([
        
            lblDateTime.topAnchor.constraint(equalTo: lblTitle.layoutMarginsGuide.bottomAnchor),
            lblDateTime.leadingAnchor.constraint(equalTo: viewBG.layoutMarginsGuide.leadingAnchor, constant: 5),
            lblDateTime.trailingAnchor.constraint(equalTo: viewBG.layoutMarginsGuide.trailingAnchor, constant: -contentView.frame.width/2),
           // lblDateTime.bottomAnchor.constraint(equalTo: viewBG.layoutMarginsGuide.bottomAnchor),
           // lblDateTime.widthAnchor.constraint(equalToConstant: contentView.frame.width/2),
            lblDateTime.heightAnchor.constraint(equalToConstant: contentView.frame.height/3)
        ])
    }
    
    func setupIconBell(){
        NSLayoutConstraint.activate([
        
            iconBell.topAnchor.constraint(equalTo: viewBG.layoutMarginsGuide.topAnchor),
            iconBell.trailingAnchor.constraint(equalTo: viewBG.layoutMarginsGuide.trailingAnchor, constant: -5),
            iconBell.widthAnchor.constraint(equalToConstant: 25),
            iconBell.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    func setupLblDismiss(){
        NSLayoutConstraint.activate([
        
            lblDismmiss.topAnchor.constraint(equalTo: lblDateTime.layoutMarginsGuide.bottomAnchor),
            lblDismmiss.leadingAnchor.constraint(equalTo: viewBG.layoutMarginsGuide.leadingAnchor, constant: 5),
            lblDismmiss.bottomAnchor.constraint(equalTo: viewBG.bottomAnchor),
            lblDismmiss.widthAnchor.constraint(equalToConstant: contentView.frame.width/2.5)
        
        ])
    }
    
  
    
    func setuplblDetails(){
        NSLayoutConstraint.activate([
            
            
            lblDetails.topAnchor.constraint(equalTo: lblDateTime.layoutMarginsGuide.bottomAnchor),
            lblDetails.leadingAnchor.constraint(equalTo: lblDismmiss.trailingAnchor, constant: 0),
            lblDetails.trailingAnchor.constraint(equalTo: viewBG.layoutMarginsGuide.trailingAnchor, constant: -5),
            lblDetails.bottomAnchor.constraint(equalTo: viewBG.bottomAnchor),
        //    lblDetails.widthAnchor.constraint(equalToConstant: contentView.frame.width/2)

        ])
    }
    
    func setupLblMiddle(){
        NSLayoutConstraint.activate([
        
            lblMiddleLine.topAnchor.constraint(equalTo: lblDateTime.layoutMarginsGuide.bottomAnchor),
            lblMiddleLine.leadingAnchor.constraint(equalTo: lblDismmiss.layoutMarginsGuide.trailingAnchor, constant: 0),
            lblMiddleLine.trailingAnchor.constraint(equalTo: lblDetails.layoutMarginsGuide.leadingAnchor, constant: 0),
            lblMiddleLine.bottomAnchor.constraint(equalTo: viewBG.bottomAnchor),
          //  lblMiddleLine.widthAnchor.constraint(equalToConstant: contentView.frame.width/2.5)
        
        ])
    }
    
    func setuppCells(){
        contentView.addSubview(viewBG)
        contentView.addSubview(lblTitle)
        contentView.addSubview(lblDateTime)
        contentView.addSubview(iconBell)
        
        setupView()
        setupLblTitle()
        setupLblDateTime()
        setupIconBell()

    }
    
    func setupSelectedCell(){
        contentView.addSubview(lblDismmiss)
        contentView.addSubview(lblDetails)
        contentView.addSubview(lblMiddleLine)

        setupLblDismiss()
        setuplblDetails()
        setupLblMiddle()
        debugPrint("Yo")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.addSubview(lblTitle)
        setupLblTitle()
        
        
        contentView.backgroundColor = .white
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if selected{
            setupSelectedCell()
            backgroundColor = .yellow
        }else{
            lblDismmiss.removeFromSuperview()
            lblDismmiss.removeFromSuperview()
            lblMiddleLine.removeFromSuperview()
            backgroundColor = .white
        }
        
        //debugPrint("Yo")
        // Configure the view for the selected state
    }

}
