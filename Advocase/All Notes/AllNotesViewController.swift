//
//  AllNotesViewController.swift
//  Advocase
//
//  Created by Tushar Elangovan on 08/02/22.
//

import UIKit

class AllNotesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var cellID = "AllNotesCells"
    var numberOfCells = 4
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfCells
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! AllNotesTableViewCell
        cell.setupLayout()
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.height/7
    }
  
    lazy var lblTitle: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "<  All Notes"
        l.textColor = UIColor(named: "Primary")
        l.font = UIFont.boldSystemFont(ofSize: 32)
        l.adjustsFontSizeToFitWidth = true
       l.backgroundColor = .red
        return l
    }()
    
    lazy var lblNumberNotes: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "\(numberOfCells) Notes"
        l.textColor = UIColor.gray
        l.font = UIFont.preferredFont(forTextStyle: .title3)
        l.adjustsFontSizeToFitWidth = true
      //   l.backgroundColor = .yellow
        return l
    }()
    
    lazy var iconSearch: UIImageView = {
        let l = UIImageView()
        l.image = UIImage(systemName: "magnifyingglass")
        l.translatesAutoresizingMaskIntoConstraints = false
        l.tintColor = UIColor(named: "Primary")
        l.contentMode = .scaleAspectFill
        return l
    }()
    
        
    lazy var allNotesTimeline: UITableView = {
        let l = UITableView()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.dataSource = self
        l.delegate = self
        l.backgroundColor = .green
        l.register(AllNotesTableViewCell.self, forCellReuseIdentifier: cellID)
        l.showsVerticalScrollIndicator = false
        return l
    }()
    
    lazy var BtnAdd: UIButton = {
        let l = UIButton()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.backgroundColor = UIColor(named: "Primary")
        l.setImage(UIImage(systemName: "plus"), for: .normal)
        l.addTarget(self, action: #selector(addBtnTapped), for: .touchUpInside)
        l.contentMode = .scaleAspectFit
        l.tintColor = .white
        return l
    }()
    
    func setuplblTitle(){
        NSLayoutConstraint.activate([
        
            lblTitle.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 10),
            lblTitle.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            lblTitle.widthAnchor.constraint(equalToConstant: view.frame.width/2),
            lblTitle.heightAnchor.constraint(equalToConstant: view.frame.height/18)

        ])
    }
    
    func setuplblNumberNotes(){
        NSLayoutConstraint.activate([
        
            lblNumberNotes.topAnchor.constraint(equalTo: lblTitle.bottomAnchor, constant: -5),
            lblNumberNotes.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 35),
            lblNumberNotes.widthAnchor.constraint(equalToConstant: view.frame.width/4),
            lblNumberNotes.heightAnchor.constraint(equalToConstant: view.frame.height/22)

        ])
    }
    
    func setupIconSearch(){
        NSLayoutConstraint.activate([
        
            iconSearch.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor,constant: 10),
            iconSearch.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -5),
            iconSearch.widthAnchor.constraint(equalToConstant: 35),
            iconSearch.heightAnchor.constraint(equalToConstant: 35)
            
        ])
        
    }
    
    
    func setupAllNotesTimeline(){
        NSLayoutConstraint.activate([
        
            allNotesTimeline.topAnchor.constraint(equalTo: lblNumberNotes.layoutMarginsGuide.bottomAnchor, constant: 10),
            allNotesTimeline.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            allNotesTimeline.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            allNotesTimeline.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor)
        
        ])
    }
    
    func setupAddBtn(){
        NSLayoutConstraint.activate([
        
        
            BtnAdd.bottomAnchor.constraint(equalTo: allNotesTimeline.layoutMarginsGuide.bottomAnchor, constant: -15),
            BtnAdd.heightAnchor.constraint(equalToConstant: 60),
            BtnAdd.widthAnchor.constraint(equalToConstant: 60),
            BtnAdd.trailingAnchor.constraint(equalTo: allNotesTimeline.layoutMarginsGuide.trailingAnchor, constant: 0),
        ])
        BtnAdd.layer.cornerRadius = 30
    }
    
    
    
    @objc func addBtnTapped(){
        
        debugPrint("Tapped")
        let NVC = NewNotesViewController()
        NVC.modalPresentationStyle = .overFullScreen
        self.present(NVC, animated: true, completion: nil)
        
       
    
    }
    



    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
     
        
        view.addSubview(lblTitle)
        view.addSubview(lblNumberNotes)
        view.addSubview(iconSearch)
        view.addSubview(allNotesTimeline)
        allNotesTimeline.addSubview(BtnAdd)

        
        
        
        setuplblTitle()
        setupIconSearch()
        setuplblNumberNotes()
        setupAllNotesTimeline()
        setupAddBtn()
    }
}
