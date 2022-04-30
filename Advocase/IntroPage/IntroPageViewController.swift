//
//  IntroPageViewController.swift
//  Advocase
//
//  Created by Tushar Elangovan on 28/01/22.
//

import UIKit

class IntroPageViewController: UIViewController {

    var ctr = 1
    lazy var ImgLogo: UIImageView = {
        let l = UIImageView()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.contentMode = .scaleAspectFill
        l.image = UIImage(named: "OrganizedLogo")
        return l
    }()
    
    lazy var LblFirst: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Stay Organized"
        l.textColor = UIColor(named: "Primary")
        l.textAlignment = .center
        l.font = UIFont.preferredFont(forTextStyle: .title1)
        l.adjustsFontForContentSizeCategory = true
        return l
    }()
    
    lazy var LblDescription: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Be sure of your schedule by adding new cases to our virtual calender"
        l.numberOfLines = 3
        l.textColor = UIColor(named: "Primary")
        l.textAlignment = .center
        l.font = UIFont.preferredFont(forTextStyle: .title3)
        l.adjustsFontForContentSizeCategory = true
        return l
    }()
    
    lazy var btnleft: UIButton = {
        let l = UIButton()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.setTitle("skip", for: .normal)
        l.setTitleColor(UIColor(named: "Primary"), for: .normal)
        l.setTitleColor(.white, for: .selected)
        l.addTarget(self, action: #selector(skipPressed), for: .touchUpInside)
        return l
        
    }()
    
    lazy var btnRight: UIButton = {
        let l = UIButton()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.setTitle("next", for: .normal)
        l.setTitleColor(UIColor(named: "Primary"), for: .normal)
        l.addTarget(self, action: #selector(nextPressed), for: .touchUpInside)
        l.setTitleColor(.white, for: .selected)
        return l
    }()
    
    lazy var PageIcon: UIImageView = {
        let l = UIImageView()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.contentMode = .scaleAspectFit
        l.image = UIImage(named: "PageLogo")
        return l
    }()
    let titles = ["Register", "Login"]
    
    lazy var SegementedControl: UISegmentedControl = {
       let l = UISegmentedControl(items: titles)
        l.translatesAutoresizingMaskIntoConstraints = false
        l.tintColor = .white
        l.addTarget(self, action: #selector(segmentChanged), for: .valueChanged)
        l.selectedSegmentTintColor = UIColor(named: "Primary")
        l.setTitleColor(UIColor(named: "Primary")!)
        l.setTitleFont(UIFont.preferredFont(forTextStyle: .title2))
       return l
    }()
    
    func setupImgLogo(){
        NSLayoutConstraint.activate([
        
            ImgLogo.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: view.frame.height/4),
            ImgLogo.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 5),
            ImgLogo.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -5),
            ImgLogo.heightAnchor.constraint(equalToConstant: view.frame.height/4)
            
        ])
    }
    
    func setupLblOrganized(){
        NSLayoutConstraint.activate([
        
            LblFirst.topAnchor.constraint(equalTo: ImgLogo.layoutMarginsGuide.bottomAnchor, constant: view.frame.height/8),
            LblFirst.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 10),
            LblFirst.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -10),
        ])
    }
    
    func setupTvDecription(){
        NSLayoutConstraint.activate([
        
            LblDescription.topAnchor.constraint(equalTo: LblFirst.layoutMarginsGuide.bottomAnchor, constant: view.frame.height/16),
            LblDescription.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 10),
            LblDescription.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -10),
        
        ])
    }
    
    func setupskipBtn(){
        NSLayoutConstraint.activate([
        
            btnleft.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 5),
            btnleft.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant:-5),
            btnleft.widthAnchor.constraint(equalToConstant: view.frame.width/6)

        ])
    }
    
    func setupNextBtn(){
        NSLayoutConstraint.activate([
        
            btnRight.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -5),
            btnRight.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant:-5),
            btnRight.widthAnchor.constraint(equalToConstant: view.frame.width/6)

        ])
    }
    
    func setupPageIcon(){
        NSLayoutConstraint.activate([
        
            PageIcon.bottomAnchor.constraint(equalTo: btnleft.bottomAnchor, constant: -2),
            PageIcon.widthAnchor.constraint(equalToConstant: view.frame.width/6),
            PageIcon.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func setupSegemntedControl(){
        NSLayoutConstraint.activate([
        
//            SegementedControl.topAnchor.constraint(equalTo: LblDescription.layoutMarginsGuide.bottomAnchor, constant: 15),
            SegementedControl.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 10),
            SegementedControl.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -10),
            SegementedControl.bottomAnchor.constraint(equalTo: btnleft.layoutMarginsGuide.topAnchor, constant: -view.frame.height/10),
            SegementedControl.heightAnchor.constraint(equalToConstant: view.frame.height/18)
            
            
        ])
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(ImgLogo)
        view.addSubview(LblFirst)
        view.addSubview(LblDescription)
        view.addSubview(btnleft)
        view.addSubview(btnRight)
        view.addSubview(PageIcon)
       
        
        setupImgLogo()
        setupLblOrganized()
        setupTvDecription()
        setupskipBtn()
        setupNextBtn()
        setupPageIcon()
       
        // Do any additional setup after loading the view.
    }
    
    
    @objc func nextPressed(){
        ctr += 1
        debugPrint("Next Pressed")
        if ctr == 2{
            ImgLogo.image = UIImage(named: "SecondIntroLogo")
            LblFirst.text = "Never Be Late"
            LblDescription.text = "Our in-built alarm system will always alert you of upcoming events"
            PageIcon.image = UIImage(named: "SecondPageLogo")
        }
        if ctr == 3{
            setup3rdPage()
            btnRight.isHidden = true
        }
        
        
        
    }
    
    @objc func skipPressed(){
        setup3rdPage()
    }
    
    @objc func backPressed(){
        ctr = ctr - 1
        ImgLogo.image = UIImage(named: "OrganizedLogo")
        LblFirst.text = "Stay Organized"
        LblDescription.text = "Be sure of your schedule by adding new cases to our virtual calender"
        PageIcon.image = UIImage(named: "PageLogo")
        btnleft.isHidden = false
    }
    
    
    func setup3rdPage(){
        view.addSubview(SegementedControl)
        setupSegemntedControl()
        btnleft.isHidden = false
        LblFirst.text = "Everthing in one place"
        LblDescription.text = "Add your personal notes to any case you'd prefer"
        ImgLogo.image = UIImage(named: "ThirdIntroLogo")
        PageIcon.image = UIImage(named: "ThirdPageLogo")
        NSLayoutConstraint.activate([
            ImgLogo.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: view.frame.height/6)
        ])
    }
    
    @objc func segmentChanged(sender: UISegmentedControl){
        SegementedControl.setTitleColor(.white)
        switch sender.selectedSegmentIndex {
        case 1:
           // SegementedControl.setTitleColor(.white)
            let SVC = SignUpViewController()
            SVC.modalPresentationStyle = .fullScreen
            self.present(SVC, animated: true, completion: nil)
            debugPrint("1")
        case 2:
            let LVC = LoginViewController()
            LVC.modalPresentationStyle = .fullScreen
            self.present(LVC, animated: true, completion: nil)
            debugPrint("2")
        default:
            
            debugPrint("0")
            
        }
        
    }
    
    
    
    
    
    
    
    
    
    
}
extension UISegmentedControl {

    func setTitleColor(_ color: UIColor, state: UIControl.State = .normal) {
        var attributes = self.titleTextAttributes(for: state) ?? [:]
        attributes[.foregroundColor] = color
        self.setTitleTextAttributes(attributes, for: state)
    }
    
    func setTitleFont(_ font: UIFont, state: UIControl.State = .normal) {
        var attributes = self.titleTextAttributes(for: state) ?? [:]
        attributes[.font] = font
        self.setTitleTextAttributes(attributes, for: state)
    }

}
