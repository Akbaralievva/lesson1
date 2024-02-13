//
//  SignupViewController.swift
//  Home_4month_1Design
//
//  Created by A LINA on 11/2/24.
//

import UIKit

class SignupViewController: UIViewController {
    
    private lazy var backgroundImageView: UIImageView = {
        
        let imageView = UIImageView(image: UIImage(named: "backGd_boy"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    private  lazy var bannerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 40
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private lazy var fullnameLbl: UILabel = {
        let view = UILabel()
        view.text = "Full Name"
        view.font = .systemFont(ofSize: 14, weight: .regular)
        view.textColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var fullnameTF: UITextField = {
        let view = UITextField()
        view.placeholder = "Full Name"
        view.font = .systemFont(ofSize: 18, weight: .regular)
        view.textColor = .black
        view.backgroundColor = .clear
        view.layer.cornerRadius = 5
        
        let bottom = CALayer()
        bottom.backgroundColor = UIColor.black.cgColor
        bottom.frame = CGRect(x: 0, y: view.frame.height - 1, width: view.frame.width, height: 1)
        
        
        view.layer.addSublayer(bottom)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    
    
    
    private lazy var mobilenumberLbl: UILabel = {
        let view = UILabel()
        view.text = "Mobile Number"
        view.font = .systemFont(ofSize: 14, weight: .regular)
        view.textColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private lazy var mobilenumberTF: UITextField = {
        let view = UITextField()
        view.placeholder = "Mobile Number"
        view.font = .systemFont(ofSize: 18, weight: .regular)
        view.textColor = .black
        view.backgroundColor = .clear
        view.layer.cornerRadius = 5
        
        let bottom = CALayer()
        bottom.backgroundColor = UIColor.black.cgColor
        bottom.frame = CGRect(x: 0, y: view.frame.height - 1, width: view.frame.width, height: 1)
        
        
        view.layer.addSublayer(bottom)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    private lazy var emailLbl: UILabel = {
        let view = UILabel()
        view.text = "Email"
        view.font = .systemFont(ofSize: 14, weight: .regular)
        view.textColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private lazy var emailTF: UITextField = {
        let view = UITextField()
        view.placeholder = "Email"
        view.font = .systemFont(ofSize: 18, weight: .regular)
        view.textColor = .black
        view.backgroundColor = .clear
        view.layer.cornerRadius = 5
        
        let bottom = CALayer()
        bottom.backgroundColor = UIColor.black.cgColor
        bottom.frame = CGRect(x: 0, y: view.frame.height - 1, width: view.frame.width, height: 1)
        
        
        view.layer.addSublayer(bottom)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    private lazy var usernameLbl: UILabel = {
        let view = UILabel()
        view.text = "User Name"
        view.font = .systemFont(ofSize: 14, weight: .regular)
        view.textColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private lazy var usernameTF: UITextField = {
        let view = UITextField()
        view.placeholder = "User Name"
        view.font = .systemFont(ofSize: 18, weight: .regular)
        view.textColor = .black
        view.backgroundColor = .clear
        view.layer.cornerRadius = 5
        
        let bottom = CALayer()
        bottom.backgroundColor = UIColor.black.cgColor
        bottom.frame = CGRect(x: 0, y: view.frame.height - 1, width: view.frame.width, height: 1)
        
        
        view.layer.addSublayer(bottom)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
        
    private lazy var passwordLbl: UILabel = {
        let view = UILabel()
        view.text = "Password"
        view.textColor = .systemGray
        view.font = .systemFont(ofSize: 14, weight: .regular)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private lazy var passwordTF: UITextField = {
        let view = UITextField()
        view.placeholder = "Password"
        view.font = .systemFont(ofSize: 16, weight: .regular)
        view.textColor = .black
        view.backgroundColor = .clear
        view.layer.cornerRadius = 5
        
        let showHideButton = UIButton(type: .custom)
        showHideButton.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        showHideButton.tintColor = .lightGray
        showHideButton.addTarget(self, action: #selector(togglePasswordVisibility), for: .touchUpInside)
            view.rightView = showHideButton
            view.rightViewMode = .always
        
        let bottom = CALayer()
        bottom.backgroundColor = UIColor.lightGray.cgColor
        bottom.frame = CGRect(x: 0, y: view.frame.height + 5, width: view.frame.width, height: 2)


        view.layer.addSublayer(bottom)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    
    private lazy var confirmPasswordLbl: UILabel = {
        let view = UILabel()
        view.text = "Confirm Password"
        view.textColor = .systemGray
        view.font = .systemFont(ofSize: 14, weight: .regular)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private lazy var confirmPasswordTF: UITextField = {
        let view = UITextField()
        view.placeholder = "Confirm Password"
        view.font = .systemFont(ofSize: 16, weight: .regular)
        view.textColor = .black
        view.backgroundColor = .clear
        view.layer.cornerRadius = 5
        
        let showHideButton = UIButton(type: .custom)
        showHideButton.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        showHideButton.tintColor = .lightGray
        showHideButton.addTarget(self, action: #selector(togglePasswordVisibility), for: .touchUpInside)
            view.rightView = showHideButton
            view.rightViewMode = .always
        
        let bottom = CALayer()
        bottom.backgroundColor = UIColor.lightGray.cgColor
        bottom.frame = CGRect(x: 0, y: view.frame.height + 5, width: view.frame.width, height: 2)


        view.layer.addSublayer(bottom)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private lazy var signupBtn: UIButton = {
        let view = UIButton()
        view.setTitle("Sign Up", for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        view.setTitleColor(.white, for: .normal)
        view.backgroundColor = UIColor(named: "buttoncolor")
        view.layer.cornerRadius = 17
        view.addTarget(self, action: #selector(signupBtnTapped), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
        
    
    private lazy var signupLbl: UILabel = {
        let view = UILabel()
        view.text = "Already have an Account? "
        view.font = .systemFont(ofSize: 16, weight: .regular)
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    
    private lazy var backgroundBottomImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "bottomBackground"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
   
  
   override func viewDidLoad() {
       super.viewDidLoad()
       view.backgroundColor = UIColor(named: "backColor")
       setupView()
   }
    
    
    private func setupView() {
        
        view.addSubview(backgroundImageView)
        NSLayoutConstraint.activate(
            [backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor,constant: 45),
             backgroundImageView.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 10),
             backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -10),
             backgroundImageView.heightAnchor.constraint(equalToConstant: 256 )
            ])
        
        view.addSubview(bannerView)
        NSLayoutConstraint.activate([
            bannerView.topAnchor.constraint(equalTo: view.bottomAnchor),
            bannerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            bannerView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: 0),
        bannerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 7/9),
            bannerView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
           
        ])
        
        bannerView.addSubview(fullnameLbl)
        NSLayoutConstraint.activate([
            fullnameLbl.topAnchor.constraint(equalTo: bannerView.topAnchor,constant: 42),
            fullnameLbl.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 24),
            fullnameLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -24),
            fullnameLbl.heightAnchor.constraint(equalToConstant: 18)
            
        ])
        
        bannerView.addSubview(fullnameTF)
        NSLayoutConstraint.activate([
            fullnameTF.topAnchor.constraint(equalTo: fullnameLbl.topAnchor,constant: 28),
            fullnameTF.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 24),
            fullnameTF.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -24),
            fullnameTF.heightAnchor.constraint(equalToConstant: 18)
            
        ])
        
        
        bannerView.addSubview(mobilenumberLbl)
        NSLayoutConstraint.activate([
            mobilenumberLbl.topAnchor.constraint(equalTo: fullnameTF.topAnchor,constant: 45),
            mobilenumberLbl.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 24),
            mobilenumberLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -24),
            mobilenumberLbl.heightAnchor.constraint(equalToConstant: 18)
            
        ])
        
        bannerView.addSubview(mobilenumberTF)
        NSLayoutConstraint.activate([
            mobilenumberTF.topAnchor.constraint(equalTo: mobilenumberLbl.topAnchor,constant: 28),
            mobilenumberTF.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 24),
            mobilenumberTF.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -24),
            mobilenumberTF.heightAnchor.constraint(equalToConstant: 18)
            
        ])
        
        
        bannerView.addSubview(emailLbl)
        NSLayoutConstraint.activate([
            emailLbl.topAnchor.constraint(equalTo: mobilenumberTF.topAnchor,constant: 45),
            emailLbl.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 24),
            emailLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -24),
            emailLbl.heightAnchor.constraint(equalToConstant: 18)
            
        ])
        
        bannerView.addSubview(emailTF)
        NSLayoutConstraint.activate([
            emailTF.topAnchor.constraint(equalTo: emailLbl.topAnchor,constant: 28),
            emailTF.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 24),
            emailTF.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -24),
            emailTF.heightAnchor.constraint(equalToConstant: 18)
            
        ])
        
        
        bannerView.addSubview(usernameLbl)
        NSLayoutConstraint.activate([
            usernameLbl.topAnchor.constraint(equalTo: emailTF.topAnchor,constant: 45),
            usernameLbl.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 24),
            usernameLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -24),
            usernameLbl.heightAnchor.constraint(equalToConstant: 18)
            
        ])
        
        
        bannerView.addSubview(usernameTF)
        NSLayoutConstraint.activate([
            usernameTF.topAnchor.constraint(equalTo: usernameLbl.topAnchor,constant: 28),
            usernameTF.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 24),
            usernameTF.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -24),
            usernameTF.heightAnchor.constraint(equalToConstant: 18)
            
        ])
        
        bannerView.addSubview(passwordLbl)
        NSLayoutConstraint.activate([
            passwordLbl.topAnchor.constraint(equalTo: usernameTF.topAnchor,constant: 45),
            passwordLbl.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 24),
            passwordLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -24),
            passwordLbl.heightAnchor.constraint(equalToConstant: 18)
            
        ])
        
        
        bannerView.addSubview(passwordTF)
        NSLayoutConstraint.activate([
            passwordTF.topAnchor.constraint(equalTo: passwordLbl.topAnchor,constant: 28),
            passwordTF.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 24),
            passwordTF.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -24),
            passwordTF.heightAnchor.constraint(equalToConstant: 18)
            
        ])
        
        bannerView.addSubview(confirmPasswordLbl)
        NSLayoutConstraint.activate([
            confirmPasswordLbl.topAnchor.constraint(equalTo: passwordTF.topAnchor,constant: 45),
            confirmPasswordLbl.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 24),
            confirmPasswordLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -24),
            confirmPasswordLbl.heightAnchor.constraint(equalToConstant: 18)
            
        ])
        
        bannerView.addSubview(confirmPasswordTF)
        NSLayoutConstraint.activate([
            confirmPasswordTF.topAnchor.constraint(equalTo: confirmPasswordLbl.topAnchor,constant: 28),
            confirmPasswordTF.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 24),
            confirmPasswordTF.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -24),
            confirmPasswordTF.heightAnchor.constraint(equalToConstant: 18)
            
        ])
        
        bannerView.addSubview(signupBtn)
        NSLayoutConstraint.activate([
            signupBtn.topAnchor.constraint(equalTo: confirmPasswordTF.topAnchor,constant: 62),
            signupBtn.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 95),
            signupBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -95),
            signupBtn.heightAnchor.constraint(equalToConstant: 45)
        ])
        
        bannerView.addSubview(signupLbl)
        NSLayoutConstraint.activate([
            signupLbl.topAnchor.constraint(equalTo: signupBtn.topAnchor,constant: 80),
            signupLbl.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 30),
            signupLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -30),
            signupLbl.heightAnchor.constraint(equalToConstant: 18)

        ])
        
        view.addSubview(backgroundBottomImageView)
        NSLayoutConstraint.activate(
            [backgroundBottomImageView.topAnchor.constraint(equalTo: signupBtn.topAnchor,constant: 5),
             backgroundBottomImageView.leadingAnchor.constraint(equalTo: bannerView.leadingAnchor, constant: 0),
             backgroundBottomImageView.trailingAnchor.constraint(equalTo: bannerView.trailingAnchor,constant: 0),
             backgroundBottomImageView.heightAnchor.constraint(equalToConstant: 150),
             backgroundBottomImageView.bottomAnchor.constraint(equalTo: bottomLayoutGuide.bottomAnchor, constant: 0)
            ])
        
        }
    
    @objc func togglePasswordVisibility() {
       passwordTF.isSecureTextEntry.toggle()
   }
    
    
    @objc private func signupBtnTapped() {
       check()
        
    }
    
    private func check() {
        guard let fullname = fullnameTF.text, !fullname.isEmpty,
              let mobilenumber = mobilenumberTF.text, !mobilenumber.isEmpty,
              let email = emailTF.text, !email.isEmpty,
              let username = usernameTF.text, !username.isEmpty,
              let password = passwordTF.text, !password.isEmpty,
              let confirmPassword = confirmPasswordTF.text, !confirmPassword.isEmpty
              else {
            setIncorrectStyle()
            fullnameLbl.text = "Ошибка! Некоторые поля не заполнены"
           return
        }
        
        let vc = SuccessViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func setIncorrectStyle() {
        
        
        fullnameTF.layer.borderWidth = 1
        fullnameTF.layer.borderColor = UIColor.red.cgColor
        
        mobilenumberTF.layer.borderWidth = 1
        mobilenumberTF.layer.borderColor = UIColor.red.cgColor
        
        emailTF.layer.borderWidth = 1
        emailTF.layer.borderColor = UIColor.red.cgColor
        
        usernameTF.layer.borderWidth = 1
        usernameTF.layer.borderColor = UIColor.red.cgColor
        
        passwordTF.layer.borderWidth = 1
        passwordTF.layer.borderColor = UIColor.red.cgColor
        
        confirmPasswordTF.layer.borderWidth = 1
        confirmPasswordTF.layer.borderColor = UIColor.red.cgColor
    }
   
    
}
