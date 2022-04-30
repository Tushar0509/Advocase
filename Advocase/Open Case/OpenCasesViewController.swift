//
//  OpenCasesViewController.swift
//  Advocase
//
//  Created by Tushar Elangovan on 08/02/22.
//

import UIKit

class OpenCasesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var cellID = "OpenCase"
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! OpenCasesTableViewCell
        cell.setupLayout()
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.height/6
    }
    
    
    
    lazy var lblTitle: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "<  Open Cases"
        l.textColor = UIColor(named: "Primary")
        l.font = UIFont.boldSystemFont(ofSize: 30)
        l.adjustsFontSizeToFitWidth = true
        return l
    }()
        
    lazy var openCasesTimeline: UITableView = {
        let l = UITableView()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.dataSource = self
        l.delegate = self
      //  l.backgroundColor = .green
        l.register(OpenCasesTableViewCell.self, forCellReuseIdentifier: cellID)
        l.showsVerticalScrollIndicator = false
        return l
    }()
    
    func setuplblTitle(){
        NSLayoutConstraint.activate([
        
            lblTitle.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 5),
            lblTitle.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            lblTitle.widthAnchor.constraint(equalToConstant: view.frame.width/2),
            lblTitle.heightAnchor.constraint(equalToConstant: view.frame.height/10)

        ])
    }
    
    func setupOpenCaseTV(){
        NSLayoutConstraint.activate([
        
            openCasesTimeline.topAnchor.constraint(equalTo: lblTitle.layoutMarginsGuide.bottomAnchor),
            openCasesTimeline.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            openCasesTimeline.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            openCasesTimeline.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor)
    
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        view.addSubview(lblTitle)
        view.addSubview(openCasesTimeline)
        
        setuplblTitle()
        setupOpenCaseTV()
        
    }
    

}
