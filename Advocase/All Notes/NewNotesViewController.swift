//
//  NewNotesViewController.swift
//  Advocase
//
//  Created by Tushar Elangovan on 13/02/22.
//

import UIKit

class NewNotesViewController: UIViewController {
    
    lazy var viewSecondary: UIView = {
       
        let l = UIView()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.backgroundColor = .green
        l.layer.cornerRadius = 20
        l.backgroundColor = UIColor(named: "BG")
        return l
    }()
    
    lazy var titleTf: UITextField = {
        let l = UITextField()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.placeholder = "Case Title"
        l.layer.cornerRadius = 10
        l.backgroundColor = .white
        l.setLeftPaddingPoints(10)
        return l
    }()
    
    lazy var numberTf: UITextField = {
        let l = UITextField()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.placeholder = "Case Number"
        l.layer.cornerRadius = 10
        l.backgroundColor = .white
        l.setLeftPaddingPoints(10)
        return l
    }()
    
    lazy var typeTf: UITextField = {
        let l = UITextField()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.placeholder = "Case Type"
        l.setLeftPaddingPoints(10)
        l.backgroundColor = .white
        l.layer.cornerRadius = 10
        return l
    }()
    
    lazy var createNBBtn: UIButton = {
        let l = UIButton()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.setTitle("Create Notebook", for: .normal)
        l.backgroundColor = UIColor(named: "Primary")
        l.setTitleColor(.white, for: .normal)
        l.layer.cornerRadius = 15
        return l
    }()
    
    func setupViewSecondary(){
        NSLayoutConstraint.activate([
        
            viewSecondary.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            viewSecondary.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            viewSecondary.heightAnchor.constraint(equalToConstant: view.frame.height/2.5),
            viewSecondary.widthAnchor.constraint(equalToConstant: view.frame.width/1.5)
        
        ])
    }
    
    func setupTitleTF(){
        NSLayoutConstraint.activate([
        
            titleTf.topAnchor.constraint(equalTo: viewSecondary.layoutMarginsGuide.topAnchor, constant: 10),
            titleTf.centerXAnchor.constraint(equalTo: viewSecondary.centerXAnchor),
            titleTf.widthAnchor.constraint(equalToConstant: view.frame.width/1.75),
            titleTf.heightAnchor.constraint(equalToConstant: view.frame.height/16)
    
        ])
    }
    
    
    func setupNumberTF(){
        NSLayoutConstraint.activate([
        
            numberTf.topAnchor.constraint(equalTo: titleTf.layoutMarginsGuide.bottomAnchor, constant: view.frame.height/20),
            numberTf.centerXAnchor.constraint(equalTo: viewSecondary.centerXAnchor),
            numberTf.widthAnchor.constraint(equalToConstant: view.frame.width/1.75),
            numberTf.heightAnchor.constraint(equalToConstant: view.frame.height/16)
    
        ])
    }
    
    func setupTypeTF(){
        NSLayoutConstraint.activate([
        
            typeTf.topAnchor.constraint(equalTo: numberTf.layoutMarginsGuide.bottomAnchor, constant: view.frame.height/22),
            typeTf.centerXAnchor.constraint(equalTo: viewSecondary.centerXAnchor),
            typeTf.widthAnchor.constraint(equalToConstant: view.frame.width/1.75),
            typeTf.heightAnchor.constraint(equalToConstant: view.frame.height/16)
    
        ])
    }
    
    func setupcreateNBBtn(){
        NSLayoutConstraint.activate([
        
            createNBBtn.topAnchor.constraint(equalTo: typeTf.layoutMarginsGuide.bottomAnchor, constant: view.frame.height/20),
            createNBBtn.bottomAnchor.constraint(equalTo: viewSecondary.layoutMarginsGuide.bottomAnchor, constant: -10),
            createNBBtn.centerXAnchor.constraint(equalTo: viewSecondary.centerXAnchor),
            createNBBtn.widthAnchor.constraint(equalToConstant: view.frame.width/2),
            createNBBtn.heightAnchor.constraint(equalToConstant: view.frame.height/16)
    
        ])
    }
    
    
    
  
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissVC))
        view.addGestureRecognizer(tap)
        
        //MARK: Blur Effect
        
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.systemThinMaterialDark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(blurEffectView)
        
        view.backgroundColor = .clear
        view.addSubview(viewSecondary)
        viewSecondary.addSubview(titleTf)
        viewSecondary.addSubview(numberTf)
        viewSecondary.addSubview(typeTf)
        viewSecondary.addSubview(createNBBtn)
        
        setupViewSecondary()
        setupTitleTF()
        setupNumberTF()
        setupTypeTF()
        setupcreateNBBtn()

    }
    
    
    @objc func dismissVC(){
        debugPrint("Dismiss")
        self.dismiss(animated: true, completion: nil)
    }
    
}
