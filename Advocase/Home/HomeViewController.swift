//
//  HomeViewController.swift
//  Advocase
//
//  Created by Tushar Elangovan on 03/02/22.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var numberofCells = 0
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if numberofCells>0{
            return numberofCells
        }else {
            return 1

        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if numberofCells>0{
            let cell = tvTimeline.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! TimelineTableViewCell
            cell.setuppCells()
            return cell
        }
        
        else{
            let cell = tvTimeline.dequeueReusableCell(withIdentifier: noCellID, for: indexPath) as! NoMeetingTableViewCell
            cell.setupCell()
            return cell
        }
    }
    
    
    var cellID = "TimelineCells"
    var noCellID = "NoCells"
    
    
    lazy var iconSearch: UIImageView = {
        let l = UIImageView()
        l.image = UIImage(systemName: "magnifyingglass")
        l.translatesAutoresizingMaskIntoConstraints = false
        l.tintColor = .white
        l.contentMode = .scaleAspectFill
        return l
    }()
    
    
    lazy var iconNotes: UIImageView = {
        let l = UIImageView()
        l.image = UIImage(systemName: "note.text")
        l.tintColor = .white
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    lazy var LblName: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Rahul Naroda"
        l.textColor = .white
        l.font = UIFont.preferredFont(forTextStyle: .title1)
       // l.backgroundColor = .red
        return l
    }()

    lazy var LblLawyerID: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Lawyer ID - 123456yu"
        l.textColor = .darkGray
        l.adjustsFontSizeToFitWidth = true
        l.font = UIFont.preferredFont(forTextStyle: .title3)
       // l.backgroundColor = .yellow
        return l
    }()
    
    lazy var Cell1: UIView = {
        let l = UIView()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.backgroundColor = .white
        l.layer.cornerRadius = 10
        return l
    }()
    
    lazy var cell1Number: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "5"
        l.textColor = UIColor(named: "Primary")
       // l.backgroundColor = .red
        l.font = UIFont.boldSystemFont(ofSize: 40)
        return l
    }()
    
    lazy var LblOpenCaseCell1: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Open Cases"
        l.textAlignment = .center
        l.textColor = UIColor(named: "Primary")
        l.font = UIFont.preferredFont(forTextStyle: .body)
        l.adjustsFontSizeToFitWidth = true
        return l
    }()
    
    lazy var Cell2: UIView = {
        let l = UIView()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.backgroundColor = .white
        l.layer.cornerRadius = 10
        return l
    }()
    
    lazy var cell2Number: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "3"
        l.textColor = UIColor(named: "Primary")
       // l.backgroundColor = .red
        l.font = UIFont.boldSystemFont(ofSize: 40)
        return l
    }()
    
    lazy var LblClosedCaseCell2: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Closed Cases"
        l.textAlignment = .center
        l.textColor = UIColor(named: "Primary")
        l.font = UIFont.preferredFont(forTextStyle: .body)
        l.adjustsFontSizeToFitWidth = true
        return l
    }()
    
    
    lazy var Cell3: UIView = {
        let l = UIView()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.backgroundColor = .white
        l.layer.cornerRadius = 10
        return l
    }()
    
    lazy var cell3Number: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "2"
        l.textColor = UIColor(named: "Primary")
        l.font = UIFont.boldSystemFont(ofSize: 40)
        return l
    }()
    
    lazy var LblUpcomingCaseCell3: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Upcoming Cases"
        l.textAlignment = .center
        l.textColor = UIColor(named: "Primary")
        l.font = UIFont.preferredFont(forTextStyle: .body)
        l.adjustsFontSizeToFitWidth = true
        return l
    }()
    
    lazy var viewSecondary: UIView = {
        let l = UIView()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.backgroundColor = .white
        l.layer.cornerRadius = 30
        return l
    }()
    
    lazy var tvTimeline: UITableView = {

        let l = UITableView()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.dataSource = self
        l.delegate = self
      //  l.backgroundColor = .green
        l.register(TimelineTableViewCell.self, forCellReuseIdentifier: cellID)
        l.register(NoMeetingTableViewCell.self, forCellReuseIdentifier: noCellID)
        l.showsVerticalScrollIndicator = false
        return l
    }()
    
    lazy var BtnAdd: UIButton = {
        let l = UIButton()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.backgroundColor = UIColor(named: "Primary")
        l.setImage(UIImage(systemName: "plus"), for: .normal)
        l.contentMode = .scaleAspectFit
        l.tintColor = .white
        return l
    }()

    func setupIconSearch(){
        NSLayoutConstraint.activate([
        
            iconSearch.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor,constant: 5),
            iconSearch.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 5),
            iconSearch.widthAnchor.constraint(equalToConstant: 40),
            iconSearch.heightAnchor.constraint(equalToConstant: 40)
            
        ])
        
    }
    
    func setupIconNotes(){
        NSLayoutConstraint.activate([
        
            iconNotes.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor,constant: 5),
            iconNotes.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -5),
            iconNotes.widthAnchor.constraint(equalToConstant: 40),
            iconNotes.heightAnchor.constraint(equalToConstant: 40)
            
        ])
        
    }
    
    func setupLblName(){
        NSLayoutConstraint.activate([
        
        
            LblName.topAnchor.constraint(equalTo: iconSearch.layoutMarginsGuide.bottomAnchor, constant: 20),
            LblName.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 5),
            LblName.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -5),
            LblName.widthAnchor.constraint(equalToConstant: view.frame.width/2),
            LblName.heightAnchor.constraint(equalToConstant: view.frame.height/16)
            
        
        ])
    }
    
    func setupLblLaewyerID(){
        NSLayoutConstraint.activate([
        
        
            LblLawyerID.topAnchor.constraint(equalTo: LblName.layoutMarginsGuide.bottomAnchor, constant: 0),
            LblLawyerID.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 5),
            LblLawyerID.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -15),
            LblLawyerID.widthAnchor.constraint(equalToConstant: view.frame.width/2),
            LblLawyerID.heightAnchor.constraint(equalToConstant: view.frame.height/24)

            
            
        
        ])
    }
    
    func setupCell1(){
        NSLayoutConstraint.activate([
        
           // Cell1.topAnchor.constraint(equalTo: LblLawyerID.layoutMarginsGuide.bottomAnchor, constant: 20),
            Cell1.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 5),
            Cell1.bottomAnchor.constraint(equalTo: viewSecondary.layoutMarginsGuide.topAnchor, constant: -20),
            Cell1.widthAnchor.constraint(equalToConstant: view.frame.width/4),
            Cell1.heightAnchor.constraint(equalToConstant: view.frame.height/8),
    
        ])
    }
    
    func setupCell1N(){
        NSLayoutConstraint.activate([
        
            cell1Number.topAnchor.constraint(equalTo: Cell1.layoutMarginsGuide.topAnchor, constant: 5),
            cell1Number.centerXAnchor.constraint(equalTo: Cell1.centerXAnchor),
            cell1Number.bottomAnchor.constraint(equalTo: Cell1.bottomAnchor, constant: -view.frame.height/32),
            
        ])
    }
    
    func setupCell1Lbl(){
        NSLayoutConstraint.activate([
        
            LblOpenCaseCell1.topAnchor.constraint(equalTo: cell1Number.layoutMarginsGuide.bottomAnchor),
            LblOpenCaseCell1.centerXAnchor.constraint(equalTo: Cell1.centerXAnchor),
            LblOpenCaseCell1.bottomAnchor.constraint(equalTo: Cell1.layoutMarginsGuide.bottomAnchor),
            LblOpenCaseCell1.leadingAnchor.constraint(equalTo: Cell1.layoutMarginsGuide.leadingAnchor),
            LblOpenCaseCell1.trailingAnchor.constraint(equalTo: Cell1.layoutMarginsGuide.trailingAnchor)
        
        
        ])
    }
    
    func setupCell2(){
        NSLayoutConstraint.activate([
        
            Cell2.topAnchor.constraint(equalTo: LblLawyerID.layoutMarginsGuide.bottomAnchor, constant: 20),
//            Cell2.leadingAnchor.constraint(equalTo: Cell1.layoutMarginsGuide.trailingAnchor, constant: 5),
//            Cell2.bottomAnchor.constraint(equalTo: viewSecondary.layoutMarginsGuide.topAnchor, constant: -20),
            Cell2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            Cell2.widthAnchor.constraint(equalToConstant: view.frame.width/4),
            Cell2.heightAnchor.constraint(equalToConstant: view.frame.height/8),
    
        ])
    }
    
    func setupCell2N(){
        NSLayoutConstraint.activate([
        
            cell2Number.topAnchor.constraint(equalTo: Cell2.layoutMarginsGuide.topAnchor, constant: 5),
            cell2Number.centerXAnchor.constraint(equalTo: Cell2.centerXAnchor),
            cell2Number.bottomAnchor.constraint(equalTo: Cell2.bottomAnchor, constant: -view.frame.height/32),
            
        ])
    }
    
    func setupCell2Lbl(){
        NSLayoutConstraint.activate([
        
            LblClosedCaseCell2.topAnchor.constraint(equalTo: cell2Number.layoutMarginsGuide.bottomAnchor),
            LblClosedCaseCell2.centerXAnchor.constraint(equalTo: Cell2.centerXAnchor),
            LblClosedCaseCell2.bottomAnchor.constraint(equalTo: Cell2.layoutMarginsGuide.bottomAnchor),
            LblClosedCaseCell2.leadingAnchor.constraint(equalTo: Cell2.layoutMarginsGuide.leadingAnchor),
            LblClosedCaseCell2.trailingAnchor.constraint(equalTo: Cell2.layoutMarginsGuide.trailingAnchor)
        
        
        ])
    }
    
    
    
    
    func setupCell3(){
        NSLayoutConstraint.activate([
        
            Cell3.topAnchor.constraint(equalTo: LblLawyerID.layoutMarginsGuide.bottomAnchor, constant: 20),
            Cell3.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -5),
            Cell3.bottomAnchor.constraint(equalTo: viewSecondary.layoutMarginsGuide.topAnchor, constant: -20),
            Cell3.widthAnchor.constraint(equalToConstant: view.frame.width/4),
            Cell3.heightAnchor.constraint(equalToConstant: view.frame.height/8),
        ])
    }
    
    func setupCell3N(){
        NSLayoutConstraint.activate([
        
            cell3Number.topAnchor.constraint(equalTo: Cell3.layoutMarginsGuide.topAnchor, constant: 5),
            cell3Number.centerXAnchor.constraint(equalTo: Cell3.centerXAnchor),
            cell3Number.bottomAnchor.constraint(equalTo: Cell3.bottomAnchor, constant: -view.frame.height/32),
            
        ])
    }
    
    func setupCell3Lbl(){
        NSLayoutConstraint.activate([
        
            LblUpcomingCaseCell3.topAnchor.constraint(equalTo: cell3Number.layoutMarginsGuide.bottomAnchor),
            LblUpcomingCaseCell3.centerXAnchor.constraint(equalTo: Cell3.centerXAnchor),
            LblUpcomingCaseCell3.bottomAnchor.constraint(equalTo: Cell3.layoutMarginsGuide.bottomAnchor),
            LblUpcomingCaseCell3.leadingAnchor.constraint(equalTo: Cell3.layoutMarginsGuide.leadingAnchor),
            LblUpcomingCaseCell3.trailingAnchor.constraint(equalTo: Cell3.layoutMarginsGuide.trailingAnchor)
        
        
        ])
    }
        
    func setupViewSecondary(){
        NSLayoutConstraint.activate([
        
            viewSecondary.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: view.frame.height/3),
            viewSecondary.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 10),
            viewSecondary.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            viewSecondary.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        
        ])
    }
    
    
    func setupCv(){
        NSLayoutConstraint.activate([
        
            tvTimeline.topAnchor.constraint(equalTo: viewSecondary.layoutMarginsGuide.topAnchor, constant: 15),
            tvTimeline.leadingAnchor.constraint(equalTo: viewSecondary.layoutMarginsGuide.leadingAnchor, constant: 10),
            tvTimeline.trailingAnchor.constraint(equalTo: viewSecondary.layoutMarginsGuide.trailingAnchor, constant: -15),
            tvTimeline.bottomAnchor.constraint(equalTo: viewSecondary.layoutMarginsGuide.bottomAnchor, constant: -15)
        
        ])
    }
    
    func setupAddBtn(){
        NSLayoutConstraint.activate([
        
        
            BtnAdd.bottomAnchor.constraint(equalTo: viewSecondary.layoutMarginsGuide.bottomAnchor, constant: -15),
            BtnAdd.heightAnchor.constraint(equalToConstant: 60),
            BtnAdd.widthAnchor.constraint(equalToConstant: 60),
            BtnAdd.trailingAnchor.constraint(equalTo: viewSecondary.layoutMarginsGuide.trailingAnchor, constant: -10),
        ])
        BtnAdd.layer.cornerRadius = 30
    }

    
    //MARK: -Collection View Functions
    

    
    var selectedIndex: NSInteger! = -1
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.tvTimeline.beginUpdates()
        self.tvTimeline.endUpdates()
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if numberofCells>0{
            if self.tvTimeline .indexPathForSelectedRow?.row == indexPath.row {
                return view.frame.height/6;
                } else {
                    return view.frame.height/8;
                }
        }
        else{
            return view.frame.height/2;
        }
       
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
           print("Clicked on:\(indexPath.row)")
           
        
       }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: "Primary")
        
        
        view.addSubview(iconSearch)
        view.addSubview(iconNotes)
        view.addSubview(LblName)
        view.addSubview(LblLawyerID)
        
        view.addSubview(Cell1)
        Cell1.addSubview(cell1Number)
        Cell1.addSubview(LblOpenCaseCell1)
        
        view.addSubview(Cell2)
        Cell2.addSubview(cell2Number)
        Cell2.addSubview(LblClosedCaseCell2)
        
        view.addSubview(Cell3)
        Cell3.addSubview(cell3Number)
        Cell3.addSubview(LblUpcomingCaseCell3)
        
        view.addSubview(viewSecondary)
        setupViewSecondary()
        setupIconSearch()
        setupIconNotes()
        setupLblName()
        setupLblLaewyerID()
        setupCell1()
        setupCell1N()
        setupCell1Lbl()
        setupCell2()
        setupCell2N()
        setupCell2Lbl()
        setupCell3()
        setupCell3N()
        setupCell3Lbl()
        
        viewSecondary.addSubview(tvTimeline)
        setupCv()
        viewSecondary.addSubview(BtnAdd)
        setupAddBtn()
        
        // Do any additional setup after loading the view.
    }
}
