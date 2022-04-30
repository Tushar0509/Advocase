//
//  SignUpViewController.swift
//  Advocase
//
//  Created by Tushar Elangovan on 31/01/22.
//

import UIKit

class SignUpViewController: UIViewController {
    
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
    
    lazy var lblSignUp: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Sign Up"
        l.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        l.adjustsFontSizeToFitWidth = true
        l.textColor = UIColor(named: "Primary")
        return l
    }()
    
    lazy var scrollView: UIScrollView = {
        let l = UIScrollView()
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    lazy var Viewtf: UIView = {
        let l = UIView()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.backgroundColor = .green
        return l
    }()
    
    lazy var tfDegree: UITextField = {
        let l = UITextField()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.layer.cornerRadius = 10
        l.placeholder = "Professional Degree"
        l.tintColor = UIColor(named: "Primary")
        l.backgroundColor = .white
        l.setLeftPaddingPoints(10)
        l.setRightPaddingPoints(10)
        return l
    }()
    
    lazy var tfLawyerId: UITextField = {
        let l = UITextField()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.layer.cornerRadius = 10
        l.placeholder = "Lawyer ID"
        l.tintColor = UIColor(named: "Primary")
        l.backgroundColor = .white
        l.setLeftPaddingPoints(10)
        l.setRightPaddingPoints(10)
        return l
    }()
    
    lazy var tfEmail: UITextField = {
        let l = UITextField()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.layer.cornerRadius = 10
        l.placeholder = "Enter your Email"
        l.tintColor = UIColor(named: "Primary")
        l.backgroundColor = .white
        l.keyboardType = .emailAddress
        l.setLeftPaddingPoints(10)
        l.setRightPaddingPoints(10)
        return l
    }()
     
    var imgCheck = "checkmark.circle"
    
    lazy var Imgcheck: UIImageView = {
        let l = UIImageView()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.image = UIImage(systemName: imgCheck)
        l.tintColor = UIColor(named: "Primary")
        l.isUserInteractionEnabled = true
        return l
    }()
    
    lazy var lblSendOTPE: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Send OTP via Email"
        l.textColor = UIColor(named: "Primary")
        return l
    }()
    
    lazy var tfPhoneNumber: UITextField = {
        let l = UITextField()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.layer.cornerRadius = 10
        l.placeholder = "Enter your phone number"
        l.tintColor = UIColor(named: "Primary")
        l.backgroundColor = .white
        l.keyboardType = .phonePad
        l.setLeftPaddingPoints(10)
        l.setRightPaddingPoints(10)
        return l
    }()
    
    var imgCheck2 = "checkmark.circle"
    
    lazy var Imgcheck2: UIImageView = {
        let l = UIImageView()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.image = UIImage(systemName: imgCheck)
        l.tintColor = UIColor(named: "Primary")
        l.isUserInteractionEnabled = true
        return l
    }()
    
    lazy var lblSendOTPP: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Send OTP via Phone"
        l.textColor = UIColor(named: "Primary")
        return l
    }()
    
    lazy var btnSignUp: UIButton = {
        let l = UIButton()
        l.isStandardBtn(bool: true)
        l.setTitle("Send OTP", for: .normal)
        l.addTarget(self, action: #selector(verifyOTP), for: .touchUpInside)
        return l
    }()
    
    lazy var lbllogin: UILabel = {
        let l = UILabel()
        l.text = "Already have an account? Login"
        l.translatesAutoresizingMaskIntoConstraints = false
        l.textAlignment = .center
        l.textColor = UIColor(named: "Primary")
        return l
    }()
    
    lazy var viewOTP: UIView = {
        let l = UIView()
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    lazy var btnVerify: UIButton = {
        let l = UIButton()
        l.isStandardBtn(bool: true)
        l.setTitle("Verify", for: .normal)
        l.setTitleColor(UIColor(named: "Primary"), for: .normal)
        return l
    }()

    func setupImgLogo(){
        NSLayoutConstraint.activate([
        
            ImgLogo.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: view.frame.height/10),
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
    
    func setupLblSignUp(){
        NSLayoutConstraint.activate([
        
        
            lblSignUp.topAnchor.constraint(equalTo: viewSecondary.layoutMarginsGuide.topAnchor, constant: 20),
            lblSignUp.leadingAnchor.constraint(equalTo: viewSecondary.layoutMarginsGuide.leadingAnchor, constant: view.frame.width/11),
            
        ])
    }
    
    func setupScrollView(){
        NSLayoutConstraint.activate([
        
            scrollView.topAnchor.constraint(equalTo: lblSignUp.layoutMarginsGuide.bottomAnchor, constant: 10),
            scrollView.leadingAnchor.constraint(equalTo: viewSecondary.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: viewSecondary.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -view.frame.height/20),
        ])
        
      
    }
    
    func setupViewTf(){
        NSLayoutConstraint.activate([
        
            Viewtf.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 10),
            Viewtf.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 10),
            Viewtf.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -10),
            Viewtf.heightAnchor.constraint(equalToConstant: view.frame.height/4),
            Viewtf.widthAnchor.constraint(equalToConstant: view.frame.width/1.5)
            
        ])
    }
    
    func setupName(){
        NSLayoutConstraint.activate([
        
            tfDegree.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: view.frame.height/24),
            tfDegree.leadingAnchor.constraint(equalTo: scrollView.layoutMarginsGuide.leadingAnchor, constant: view.frame.width/11),
            tfDegree.trailingAnchor.constraint(equalTo: scrollView.layoutMarginsGuide.trailingAnchor, constant: -view.frame.width/11),
            tfDegree.heightAnchor.constraint(equalToConstant: view.frame.height/18)

        ])
    }
    
    func setupTFLawyerID(){
        NSLayoutConstraint.activate([
        
        
            tfLawyerId.topAnchor.constraint(equalTo: tfDegree.layoutMarginsGuide.bottomAnchor, constant: view.frame.height/20),
            tfLawyerId.leadingAnchor.constraint(equalTo: scrollView.layoutMarginsGuide.leadingAnchor, constant: view.frame.width/11),
            tfLawyerId.trailingAnchor.constraint(equalTo: scrollView.layoutMarginsGuide.trailingAnchor, constant: -view.frame.width/11),
            tfLawyerId.heightAnchor.constraint(equalToConstant: view.frame.height/18)

            
        ])
    }
    
    func setupTFEmail(){
        NSLayoutConstraint.activate([
        
        
            tfEmail.topAnchor.constraint(equalTo: tfDegree.layoutMarginsGuide.bottomAnchor, constant: view.frame.height/20),
            tfEmail.leadingAnchor.constraint(equalTo: scrollView.layoutMarginsGuide.leadingAnchor, constant: view.frame.width/11),
            tfEmail.trailingAnchor.constraint(equalTo: scrollView.layoutMarginsGuide.trailingAnchor, constant: -view.frame.width/11),
            tfEmail.heightAnchor.constraint(equalToConstant: view.frame.height/18)

        ])
    }
    
    func setupImgCheck(){
        NSLayoutConstraint.activate([
        
            Imgcheck.topAnchor.constraint(equalTo: tfEmail.bottomAnchor, constant: 15),
            Imgcheck.leadingAnchor.constraint(equalTo: scrollView.layoutMarginsGuide.leadingAnchor, constant: view.frame.width/11),
            Imgcheck.widthAnchor.constraint(equalToConstant: 30),
            Imgcheck.heightAnchor.constraint(equalToConstant: 30)
        
        
        ])
    }
    
    func setuplblSentOTPE(){
        NSLayoutConstraint.activate([
        
            lblSendOTPE.topAnchor.constraint(equalTo: tfEmail.bottomAnchor, constant: 15),
            lblSendOTPE.leadingAnchor.constraint(equalTo: Imgcheck.layoutMarginsGuide.trailingAnchor, constant: 15),
            lblSendOTPE.trailingAnchor.constraint(equalTo: scrollView.layoutMarginsGuide.trailingAnchor, constant: -view.frame.width/11),
            lblSendOTPE.heightAnchor.constraint(equalToConstant: 30),
      
        ])
    }
    
    func setupTFPhone(){
        NSLayoutConstraint.activate([
        
        
            tfPhoneNumber.topAnchor.constraint(equalTo: tfEmail.layoutMarginsGuide.bottomAnchor, constant: view.frame.height/24),
            tfPhoneNumber.leadingAnchor.constraint(equalTo: scrollView.layoutMarginsGuide.leadingAnchor, constant: view.frame.width/11),
            tfPhoneNumber.trailingAnchor.constraint(equalTo: scrollView.layoutMarginsGuide.trailingAnchor, constant: -view.frame.width/11),
            tfPhoneNumber.heightAnchor.constraint(equalToConstant: view.frame.height/18)

        ])
    }
    
    func setupImgCheck2(){
        NSLayoutConstraint.activate([
        
            Imgcheck2.topAnchor.constraint(equalTo: tfPhoneNumber.bottomAnchor, constant: 15),
            Imgcheck2.leadingAnchor.constraint(equalTo: scrollView.layoutMarginsGuide.leadingAnchor, constant: view.frame.width/11),
            Imgcheck2.widthAnchor.constraint(equalToConstant: 30),
            Imgcheck2.heightAnchor.constraint(equalToConstant: 30)
        
        
        ])
    }
    
    func setuplblSentOTPP(){
        NSLayoutConstraint.activate([
        
            lblSendOTPP.topAnchor.constraint(equalTo: tfPhoneNumber.bottomAnchor, constant: 15),
            lblSendOTPP.leadingAnchor.constraint(equalTo: Imgcheck2.layoutMarginsGuide.trailingAnchor, constant: 15),
            lblSendOTPP.trailingAnchor.constraint(equalTo: scrollView.layoutMarginsGuide.trailingAnchor, constant: -view.frame.width/11),
            lblSendOTPP.heightAnchor.constraint(equalToConstant: 30),
      
        ])
    }
    
    func setBtnSignUp(){
        NSLayoutConstraint.activate([
        
            btnSignUp.topAnchor.constraint(equalTo:
            tfPhoneNumber.layoutMarginsGuide.bottomAnchor, constant: view.frame.height/24),
            btnSignUp.leadingAnchor.constraint(equalTo: scrollView.layoutMarginsGuide.leadingAnchor, constant: view.frame.width/4),
            btnSignUp.trailingAnchor.constraint(equalTo: scrollView.layoutMarginsGuide.trailingAnchor, constant: -view.frame.width/4),
            btnSignUp.heightAnchor.constraint(equalToConstant: view.frame.height/18)
        
        ])
    }
    
    func setuplblLogin(){
        NSLayoutConstraint.activate([
        
            lbllogin.topAnchor.constraint(equalTo: btnSignUp.bottomAnchor,constant: 20),
            lbllogin.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            lbllogin.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        //    lbllogin.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            lbllogin.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    let otpStackView = OTPStackView()
    
    @objc func verifyOTP(){
        debugPrint("Clicked")
        
               view.addSubview(viewOTP)
               saetupViewOTP()
               viewOTP.backgroundColor = UIColor(named: "Primary")
               btnVerify.isHidden = false
               viewOTP.addSubview(otpStackView)
               viewOTP.addSubview(btnVerify)
               otpStackView.delegate = self
      //  otpStackView.backgroundColor = .red
              btnVerify.backgroundColor = .white
        
        
        NSLayoutConstraint.activate([
            otpStackView.layoutMarginsGuide.topAnchor.constraint(equalTo: viewOTP.topAnchor, constant: view.frame.height/4),
            otpStackView.layoutMarginsGuide.bottomAnchor.constraint(equalTo: viewOTP.bottomAnchor, constant: -view.frame.height/4),
            otpStackView.widthAnchor.constraint(equalToConstant: view.frame.width/2),
            otpStackView.heightAnchor.constraint(equalToConstant: view.frame.height/10),
            otpStackView.layoutMarginsGuide.centerXAnchor.constraint(equalTo: viewOTP.centerXAnchor),
                                      
            btnVerify.layoutMarginsGuide.topAnchor.constraint(equalTo: otpStackView.bottomAnchor, constant: view.frame.height/18),
//            btnVerify.layoutMarginsGuide.leadingAnchor.constraint(equalTo: viewOTP.leadingAnchor, constant: view.frame.width/4),
//            btnVerify.layoutMarginsGuide.trailingAnchor.constraint(equalTo: viewOTP.trailingAnchor, constant: -view.frame.width/4),
            btnVerify.layoutMarginsGuide.centerXAnchor.constraint(equalTo: viewOTP.centerXAnchor),
            btnVerify.widthAnchor.constraint(equalToConstant: view.frame.width/2),
            btnVerify.heightAnchor.constraint(equalToConstant: view.frame.height/16),

                                    
        ])
    }
    
    func saetupViewOTP(){
     
        NSLayoutConstraint.activate([
            viewOTP.layoutMarginsGuide.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            viewOTP.layoutMarginsGuide.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            viewOTP.layoutMarginsGuide.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            viewOTP.layoutMarginsGuide.trailingAnchor.constraint(equalTo: view.trailingAnchor),

        ])
       
    }
    
    
    override func viewDidLayoutSubviews() {
        self.scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height/2)
    }
    
    
    @objc func checkPressed(){
        
        if imgCheck == "checkmark.circle"{
            imgCheck = "checkmark.circle.fill"
            Imgcheck.image = UIImage(systemName: "checkmark.circle.fill")
        }else if imgCheck == "checkmark.circle.fill"{
            imgCheck = "checkmark.circle"
            Imgcheck.image = UIImage(systemName: "checkmark.circle")
        }
    }
    
    @objc func checkPressed2(){
        
        if imgCheck2 == "checkmark.circle"{
            imgCheck2 = "checkmark.circle.fill"
            Imgcheck2.image = UIImage(systemName: "checkmark.circle.fill")
        }else if imgCheck2 == "checkmark.circle.fill"{
            imgCheck2 = "checkmark.circle"
            Imgcheck2.image = UIImage(systemName: "checkmark.circle")
        }
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()

        
        view.backgroundColor = UIColor(named: "Primary")
        
        let tap = UITapGestureRecognizer(target: self, action:#selector(dismissKeyboard))
        viewSecondary.addGestureRecognizer(tap)
        
        let imgTap = UITapGestureRecognizer(target: self, action: #selector(checkPressed))
        Imgcheck.addGestureRecognizer(imgTap)
        
        let imgTap2 = UITapGestureRecognizer(target: self, action: #selector(checkPressed2))
        Imgcheck2.addGestureRecognizer(imgTap2)
        
        
        view.addSubview(ImgLogo)
        view.addSubview(viewSecondary)
        viewSecondary.addSubview(lblSignUp)
        viewSecondary.addSubview(scrollView)
       // scrollView.addSubview(Viewtf)
        scrollView.addSubview(tfDegree)
     //   scrollView.addSubview(tfLawyerId)
        scrollView.addSubview(tfEmail)
//        scrollView.addSubview(Imgcheck)
//        scrollView.addSubview(lblSendOTPE)
        scrollView.addSubview(tfPhoneNumber)
     //   scrollView.addSubview(Imgcheck2)
     //   scrollView.addSubview(lblSendOTPP)
        scrollView.addSubview(btnSignUp)
        scrollView.addSubview(lbllogin)
        
        setupImgLogo()
        setupViewSecondary()
        setupLblSignUp()
        setupScrollView()
        setupName()
        
 //       setupTFLawyerID()
        setupTFEmail()
//        setupImgCheck()
//        setuplblSentOTPE()
        setupTFPhone()
     //   setupImgCheck2()
     //   setuplblSentOTPP()
        setBtnSignUp()
        setuplblLogin()
        

        //MARK: -Keyboard Hide/Show
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)

    }
}

//MARK: -Keyboard Function
extension SignUpViewController{
    
    @objc func dismissKeyboard(){
        debugPrint("called")
        scrollView.endEditing(true)
    }
    
    
}
extension SignUpViewController: OTPDelegate {
    
    func didChangeValidity(isValid: Bool) {
        btnVerify.isHidden = !isValid
    }
    
}
