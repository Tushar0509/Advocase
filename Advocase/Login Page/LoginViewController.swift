//
//  LoginViewController.swift
//  Advocase
//
//  Created by Tushar Elangovan on 29/01/22.
//

import UIKit


class LoginViewController: UIViewController {
    
    lazy var ImgLogo: UIImageView = {
        let l = UIImageView()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.contentMode = .scaleAspectFill
        l.image = UIImage(named: "AdvocaseLogo")
        return l
    }()
    
    lazy var viewSecondary: UIView = {
        let l = UIView()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.backgroundColor = UIColor(named: "BG")
        l.layer.cornerRadius = 30
        return l
    }()
    
    lazy var lblLogin: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Login"
        l.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        l.adjustsFontSizeToFitWidth = true
        l.textColor = UIColor(named: "Primary")
        return l
    }()
    
    lazy var tfEmailPhone: UITextField = {
        let l = UITextField()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.layer.cornerRadius = 10
        l.placeholder = "Enter Email/ Phone Number"
        l.tintColor = UIColor(named: "Primary")
        l.backgroundColor = .white
        l.setLeftPaddingPoints(10)
        l.setRightPaddingPoints(10)
        return l
    }()
    
    lazy var btnOtp: UIButton = {
        let l = UIButton()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.setTitle("Send OTP", for: .normal)
        l.backgroundColor = UIColor(named: "Primary")
        l.layer.cornerRadius = 10
        return l
    }()
    
    lazy var lblOr: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Or"
        l.font = UIFont.preferredFont(forTextStyle: .headline)
        l.adjustsFontSizeToFitWidth = true
        l.textColor = UIColor.gray
        return l
    }()
    
    lazy var btnG: UIButton = {
        let l = UIButton()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.setTitle("Google", for: .normal)
        l.backgroundColor = UIColor(named: "Primary")
        l.layer.cornerRadius = 10
        return l
    }()
    
    lazy var BtnRegister: UIButton = {
        let l = UIButton()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.setTitle("Don't have an account? Register", for: .normal)
        l.layer.cornerRadius = 10
        l.setTitleColor(UIColor(named: "Primary"), for: .normal)
        return l
    }()
    
    func setupImgLogo(){
        NSLayoutConstraint.activate([
        
            ImgLogo.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: view.frame.height/8),
            ImgLogo.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: view.frame.width/4),
            ImgLogo.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -view.frame.width/4),
            ImgLogo.heightAnchor.constraint(equalToConstant: view.frame.height/7)

        
        ])
    }
    
    func setupViewSecondary(){
        NSLayoutConstraint.activate([
        
            viewSecondary.topAnchor.constraint(equalTo: ImgLogo.layoutMarginsGuide.bottomAnchor, constant: view.frame.height/8),
            viewSecondary.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 10),
            viewSecondary.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            viewSecondary.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            //viewSecondary.heightAnchor.constraint(equalToConstant: view.frame.height/1.5)
        
        ])
    }
    
    func setupLblLogin(){
        NSLayoutConstraint.activate([
        
        
            lblLogin.topAnchor.constraint(equalTo: viewSecondary.layoutMarginsGuide.topAnchor, constant: 20),
            lblLogin.leadingAnchor.constraint(equalTo: viewSecondary.layoutMarginsGuide.leadingAnchor, constant: view.frame.width/11),
            
        ])
    }
    
    func setupTFEmailPhone(){
        NSLayoutConstraint.activate([
        
        
            tfEmailPhone.topAnchor.constraint(equalTo: lblLogin.layoutMarginsGuide.bottomAnchor, constant: view.frame.height/16),
            tfEmailPhone.leadingAnchor.constraint(equalTo: viewSecondary.layoutMarginsGuide.leadingAnchor, constant: view.frame.width/11),
            tfEmailPhone.trailingAnchor.constraint(equalTo: viewSecondary.layoutMarginsGuide.trailingAnchor, constant: -view.frame.width/11),
            tfEmailPhone.heightAnchor.constraint(equalToConstant: view.frame.height/18)

            
        ])
    }
    
    func setupBtnOtp(){
        NSLayoutConstraint.activate([
        
            btnOtp.topAnchor.constraint(equalTo: tfEmailPhone.layoutMarginsGuide.bottomAnchor, constant: view.frame.height/24),
            btnOtp.leadingAnchor.constraint(equalTo: viewSecondary.layoutMarginsGuide.leadingAnchor, constant: view.frame.width/11),
            btnOtp.trailingAnchor.constraint(equalTo: viewSecondary.layoutMarginsGuide.trailingAnchor, constant: -view.frame.width/11),
            btnOtp.heightAnchor.constraint(equalToConstant: view.frame.height/18)
        ])
    }
    
    func setupLblOr(){
        NSLayoutConstraint.activate([
        
            lblOr.topAnchor.constraint(equalTo: btnOtp.bottomAnchor, constant: 20),
            lblOr.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lblOr.widthAnchor.constraint(equalToConstant: 30)
        
        
        ])
    }
    
    func setupBtnG(){
        NSLayoutConstraint.activate([
        
            btnG.topAnchor.constraint(equalTo: lblOr.layoutMarginsGuide.bottomAnchor, constant: 20),
            btnG.leadingAnchor.constraint(equalTo: viewSecondary.layoutMarginsGuide.leadingAnchor, constant: view.frame.width/11),
            btnG.trailingAnchor.constraint(equalTo: viewSecondary.layoutMarginsGuide.trailingAnchor, constant: -view.frame.width/11),
            btnG.heightAnchor.constraint(equalToConstant: view.frame.height/18)
        
        
        ])
    }
    
    func setupBtnRegister(){
        NSLayoutConstraint.activate([
        
        
            BtnRegister.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -10),
            BtnRegister.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        ])
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "Primary")
        
        let tap = UITapGestureRecognizer(target: self, action:#selector(dismissKeyboard))
        viewSecondary.addGestureRecognizer(tap)
        
        view.addSubview(ImgLogo)
        view.addSubview(viewSecondary)
        viewSecondary.addSubview(lblLogin)
        viewSecondary.addSubview(tfEmailPhone)
        viewSecondary.addSubview(btnOtp)
        viewSecondary.addSubview(lblOr)
        viewSecondary.addSubview(btnG)
        viewSecondary.addSubview(BtnRegister)
        
        setupImgLogo()
        setupViewSecondary()
        setupLblLogin()
        setupTFEmailPhone()
        setupBtnOtp()
        setupLblOr()
        setupBtnG()
        setupBtnRegister()
        
        
        //MARK: -Keyboard Hide/Show
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)

        
    }
    
}

//MARK: -Keyboard Function
extension LoginViewController{
    
    @objc func dismissKeyboard(){
        debugPrint("called")

        
        tfEmailPhone.resignFirstResponder()
    }
}


