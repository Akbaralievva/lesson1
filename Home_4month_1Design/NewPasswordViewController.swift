//
//  NewPasswordViewController.swift
//  Home_4month_1Design
//
//  Created by A LINA on 12/2/24.
//

import UIKit

class NewPasswordViewController: UIViewController {
    
    private lazy var backgroundImageView: UIImageView = {
        
        let imageView = UIImageView(image: UIImage(named: "block"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    private lazy var messageTF: UITextField = {
        let view = UITextField()
        view.placeholder = "Enter"
        view.font = .systemFont(ofSize: 18, weight: .regular)
        view.textColor = UIColor(named: "textColor")
        view.backgroundColor = .systemGray
        view.layer.cornerRadius = 15
        view.layer.borderColor = UIColor(named: "textColor")?.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private  lazy var bannerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 40
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private lazy var newpasswordLbl: UILabel = {
        let view = UILabel()
        view.text = "New Password"
        view.textColor = .systemGray
        view.font = .systemFont(ofSize: 14, weight: .regular)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private lazy var newpasswordTF: UITextField = {
        let view = UITextField()
        view.placeholder = "  "
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
        view.placeholder = "  "
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
    
    
    private lazy var submitBtn: UIButton = {
        let view = UIButton()
        view.setTitle("Sign Up", for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        view.setTitleColor(.white, for: .normal)
        view.backgroundColor = UIColor(named: "submitgreen")
        view.layer.cornerRadius = 17
        view.addTarget(self, action: #selector(submitBtnTapped), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
        

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "backColor")
        setupView()
        
    }
    

    private func setupView() {
        view.addSubview(backgroundImageView)
        NSLayoutConstraint.activate(
            [backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor,constant: 80),
             backgroundImageView.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 110),
             backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -110),
             backgroundImageView.heightAnchor.constraint(equalToConstant: 140)
            ])
        
        view.addSubview(messageTF)
        NSLayoutConstraint.activate(
            [messageTF.topAnchor.constraint(equalTo: backgroundImageView.topAnchor,constant: 180),
             messageTF.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 50),
             messageTF.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -50),
             messageTF.heightAnchor.constraint(equalToConstant: 50)
            ])
        
        
        view.addSubview(bannerView)
        NSLayoutConstraint.activate([
            bannerView.topAnchor.constraint(equalTo: view.bottomAnchor),
            bannerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            bannerView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: 0),
            bannerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 6/11),
            bannerView.bottomAnchor.constraint(equalTo: view.bottomAnchor)

        ])
        
        bannerView.addSubview(newpasswordLbl)
        NSLayoutConstraint.activate(
            [newpasswordLbl.topAnchor.constraint(equalTo: bannerView.topAnchor,constant: 80),
             newpasswordLbl.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 40),
             newpasswordLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -40),
             newpasswordLbl.heightAnchor.constraint(equalToConstant: 25)
            ])
        
        
        bannerView.addSubview(newpasswordTF)
        NSLayoutConstraint.activate(
            [newpasswordTF.topAnchor.constraint(equalTo: newpasswordLbl.topAnchor,constant: 25),
             newpasswordTF.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 40),
             newpasswordTF.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -40),
             newpasswordTF.heightAnchor.constraint(equalToConstant: 50)
            ])
        
        bannerView.addSubview(confirmPasswordLbl)
        NSLayoutConstraint.activate(
            [confirmPasswordLbl.topAnchor.constraint(equalTo: newpasswordTF.topAnchor,constant: 80),
             confirmPasswordLbl.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 40),
             confirmPasswordLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -40),
             confirmPasswordLbl.heightAnchor.constraint(equalToConstant: 25)
            ])
        
        
        bannerView.addSubview(confirmPasswordTF)
        NSLayoutConstraint.activate(
            [confirmPasswordTF.topAnchor.constraint(equalTo: confirmPasswordLbl.topAnchor,constant: 25),
             confirmPasswordTF.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 40),
             confirmPasswordTF.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -40),
             confirmPasswordTF.heightAnchor.constraint(equalToConstant: 50)
            ])
        
        bannerView.addSubview(submitBtn)
        NSLayoutConstraint.activate(
            [submitBtn.topAnchor.constraint(equalTo: confirmPasswordTF.topAnchor,constant: 100),
             submitBtn.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 95),
             submitBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -95),
             submitBtn.heightAnchor.constraint(equalToConstant: 50)
            ])
        
        
    }
    
    
    
    
    @objc func togglePasswordVisibility() {
       newpasswordTF.isSecureTextEntry.toggle()
   }
    
    
    @objc private func submitBtnTapped() {
       check()
        let vc = SuccessViewController()
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    private func check() {
        guard let newpassword = newpasswordTF.text, !newpassword.isEmpty,
              let confirmPassword = confirmPasswordTF.text, !confirmPassword.isEmpty
              else {
            setIncorrectStyle()
            newpasswordLbl.text = "Ошибка! Некоторые поля не заполнены"
            return
        }
        
        let vc = NewPasswordViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func setIncorrectStyle() {
        
        newpasswordTF.layer.borderWidth = 1
        newpasswordTF.layer.borderColor = UIColor.red.cgColor
        
        confirmPasswordTF.layer.borderWidth = 1
        confirmPasswordTF.layer.borderColor = UIColor.red.cgColor
    }
    
}
