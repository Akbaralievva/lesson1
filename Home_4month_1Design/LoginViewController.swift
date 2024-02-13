//
//  LoginViewController.swift
//  Home_4month_1Design
//
//  Created by A LINA on 11/2/24.
//

import UIKit

class LoginViewController: UIViewController {
    
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
    
    
    private lazy var textLbl: UILabel = {
        let view = UILabel()
        view.text = "Trouble Logging in?"
        view.font = .systemFont(ofSize: 25, weight: .semibold)
        view.textColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private lazy var explaintextLbl: UILabel = {
        let view = UILabel()
        view.text = "Enter your email or  mobile number and we'll send you a OTP to get back into your account."
        view.font = .systemFont(ofSize: 13, weight: .regular)
        view.textColor = UIColor(named: "textColor")
        view.numberOfLines = 0
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
    
    private lazy var useridLbl: UILabel = {
        let view = UILabel()
        view.text = "Employee Id"
        view.font = .systemFont(ofSize: 14, weight: .regular)
        view.textColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var useridTF: UITextField = {
        let view = UITextField()
        view.placeholder = "ID"
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
    
    
    private lazy var choiceLbl: UILabel = {
        let view = UILabel()
        view.text = "enter your mobile number or Email  id"
        view.font = .systemFont(ofSize: 16, weight: .regular)
        view.textColor = .darkGray
        view.textAlignment = .center
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 17
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var getBtn: UIButton = {
        let view = UIButton()
        view.setTitle("Get OTP", for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        view.setTitleColor(.white, for: .normal)
        view.backgroundColor = UIColor.systemYellow
        view.layer.cornerRadius = 17
        view.addTarget(self, action: #selector(getBtnTapped), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
        
    
    
    
    
//    private lazy var firstBtn: UIButton = {
//        let view = UIButton()
//        view.setTitle("x", for: .normal)
//        view.backgroundColor = UIColor.clear
//        view.layer.borderWidth = 1
//        view.layer.borderColor = UIColor.systemGray.cgColor
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//    
//    private lazy var secondBtn: UIButton = {
//        let view = UIButton()
//        view.setTitle("x", for: .normal)
//        view.backgroundColor = UIColor.clear
//        view.layer.borderWidth = 1
//        view.layer.borderColor = UIColor.systemGray.cgColor
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//    
//    private lazy var thirdBtn: UIButton = {
//        let view = UIButton()
//        view.setTitle("x", for: .normal)
//        view.backgroundColor = UIColor.clear
//        view.layer.borderWidth = 1
//        view.layer.borderColor = UIColor.systemGray.cgColor
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//    
//    private lazy var fourthBtn: UIButton = {
//        let view = UIButton()
//        view.setTitle("x", for: .normal)
//        view.backgroundColor = UIColor.clear
//        view.layer.borderWidth = 1
//        view.layer.borderColor = UIColor.systemGray.cgColor
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//    
//    private lazy var fifthBtn: UIButton = {
//        let view = UIButton()
//        view.setTitle("x", for: .normal)
//        view.backgroundColor = UIColor.clear
//        view.layer.borderWidth = 1
//        view.layer.borderColor = UIColor.systemGray.cgColor
//        view.layer.cornerRadius = 35
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//    
//    private lazy var sixthBtn: UIButton = {
//        let view = UIButton()
//        view.setTitle("x", for: .normal)
//        view.backgroundColor = UIColor.clear
//        view.layer.borderWidth = 1
//        view.layer.borderColor = UIColor.systemGray.cgColor
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//    
//    
//    
//        
//    private lazy var stackView: UIStackView = {
//        let view = UIStackView()
//        view.axis = .vertical
//        view.spacing = 5
//    
//        let buttons = [firstBtn, secondBtn, thirdBtn, fourthBtn, fifthBtn, sixthBtn]
//        for button in buttons {
//            stackView.addArrangedSubview(button)
//        }
//        
//        buttons.forEach { button in
//            button.heightAnchor.constraint(equalToConstant: 40).isActive = true
//        }
//        
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()

    
    private lazy var submitBtn: UIButton = {
        let view = UIButton()
        view.setTitle("Submit", for: .normal)
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
        
        view.addSubview(textLbl)
        NSLayoutConstraint.activate(
            [textLbl.topAnchor.constraint(equalTo: messageTF.topAnchor,constant: 70),
             textLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             textLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70),
             textLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -60),
             textLbl.heightAnchor.constraint(equalToConstant: 45)
            ])
        view.addSubview(explaintextLbl)
        NSLayoutConstraint.activate(
            [explaintextLbl.topAnchor.constraint(equalTo: textLbl.topAnchor, constant: 30),
             explaintextLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
             explaintextLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
             explaintextLbl.heightAnchor.constraint(equalToConstant: 60)
            ])

        view.addSubview(bannerView)
        NSLayoutConstraint.activate([
            bannerView.topAnchor.constraint(equalTo: view.bottomAnchor),
            bannerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            bannerView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: 0),
        bannerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 7/15),
            bannerView.bottomAnchor.constraint(equalTo: view.bottomAnchor)

        ])
        
        bannerView.addSubview(useridLbl)
        NSLayoutConstraint.activate([
            useridLbl.topAnchor.constraint(equalTo: bannerView.topAnchor,constant: 42),
            useridLbl.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 24),
            useridLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -24),
            useridLbl.heightAnchor.constraint(equalToConstant: 18)
            
        ])
        
        bannerView.addSubview(useridTF)
        NSLayoutConstraint.activate([
            useridTF.topAnchor.constraint(equalTo: useridLbl.topAnchor,constant: 32),
            useridTF.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 28),
            useridTF.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -28),
            useridTF.heightAnchor.constraint(equalToConstant: 18)
        ])
        
        
        bannerView.addSubview(choiceLbl)
        NSLayoutConstraint.activate([
            choiceLbl.topAnchor.constraint(equalTo: useridTF.topAnchor,constant: 55),
            choiceLbl.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 28),
            choiceLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -28),
            choiceLbl.heightAnchor.constraint(equalToConstant: 40)
            
        ])
        
        bannerView.addSubview(getBtn)
        NSLayoutConstraint.activate([
            getBtn.topAnchor.constraint(equalTo: choiceLbl.topAnchor,constant: 50),
            getBtn.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 270),
            getBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -28),
            getBtn.heightAnchor.constraint(equalToConstant: 40)
        ])
        
//        bannerView.addSubview(stackView)
//        NSLayoutConstraint.activate([
//            stackView.topAnchor.constraint(equalTo: getBtn.bottomAnchor, constant: 60),
//            stackView.leadingAnchor.constraint(equalTo: bannerView.leadingAnchor, constant: 30),
//            stackView.trailingAnchor.constraint(equalTo: bannerView.trailingAnchor, constant: -30),
//            stackView.heightAnchor.constraint(equalToConstant: 40)
//        ])
//        
//        stackView.addSubview(firstBtn)
//        NSLayoutConstraint.activate([
//            firstBtn.topAnchor.constraint(equalTo: stackView.topAnchor),
//            firstBtn.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 0),
//            firstBtn.trailingAnchor.constraint(equalTo: secondBtn.trailingAnchor, constant: 0),
//         firstBtn.heightAnchor.constraint(equalToConstant: 40)
//        ])
//        
//        stackView.addSubview(secondBtn)
//        NSLayoutConstraint.activate([
//            secondBtn.topAnchor.constraint(equalTo: stackView.topAnchor),
//            secondBtn.leadingAnchor.constraint(equalTo: firstBtn.leadingAnchor),
//            secondBtn.trailingAnchor.constraint(equalTo: thirdBtn.trailingAnchor),
//            secondBtn.heightAnchor.constraint(equalToConstant: 40)
//        ])
//          
//        stackView.addSubview(thirdBtn)
//        NSLayoutConstraint.activate([
//            thirdBtn.topAnchor.constraint(equalTo: stackView.topAnchor),
//            thirdBtn.leadingAnchor.constraint(equalTo: secondBtn.leadingAnchor),
//            thirdBtn.trailingAnchor.constraint(equalTo: fourthBtn.trailingAnchor),
//            thirdBtn.heightAnchor.constraint(equalToConstant: 40)
//        ])
//        
//        stackView.addSubview(fourthBtn)
//        NSLayoutConstraint.activate([
//            fourthBtn.topAnchor.constraint(equalTo: stackView.topAnchor),
//            fourthBtn.leadingAnchor.constraint(equalTo: thirdBtn.leadingAnchor),
//            fourthBtn.trailingAnchor.constraint(equalTo: fifthBtn.trailingAnchor),
//            fourthBtn.heightAnchor.constraint(equalToConstant: 40)
//        ])
//        
//        stackView.addSubview(fifthBtn)
//        NSLayoutConstraint.activate([
//            fifthBtn.topAnchor.constraint(equalTo: stackView.topAnchor),
//            fifthBtn.leadingAnchor.constraint(equalTo: fourthBtn.leadingAnchor),
//            fifthBtn.trailingAnchor.constraint(equalTo: sixthBtn.trailingAnchor),
//            fifthBtn.heightAnchor.constraint(equalToConstant: 40)
//        ])
//        
//        stackView.addSubview(sixthBtn)
//        NSLayoutConstraint.activate([
//            sixthBtn.topAnchor.constraint(equalTo: stackView.topAnchor),
//            sixthBtn.leadingAnchor.constraint(equalTo: fifthBtn.leadingAnchor),
//            sixthBtn.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
//            sixthBtn.heightAnchor.constraint(equalToConstant: 40)
//        
//        ])
        
        bannerView.addSubview(submitBtn)
        NSLayoutConstraint.activate([
            submitBtn.topAnchor.constraint(equalTo: getBtn.topAnchor,constant: 100),
            submitBtn.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 95),
            submitBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -95),
            submitBtn.heightAnchor.constraint(equalToConstant: 40)
        
        ])
    }
    
    
    private func check() {
        guard let userid = useridTF.text, !userid.isEmpty
              else {
            setIncorrectStyle()
            useridLbl.text = "Ошибка! Некоторые поля не заполнены"
            return
        }
        
        let vc = NewPasswordViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func setIncorrectStyle() {
        useridLbl.text = "Ошибка!"
        useridLbl.textColor = .red
        
        useridTF.layer.borderWidth = 1
        useridTF.layer.borderColor = UIColor.red.cgColor
        
        
    }
   
    
    @objc private func getBtnTapped() {
       
        check()
        
    }
    
    
    
    @objc private func submitBtnTapped() {
       
        let vc = SuccessViewController()
        
        navigationController?.pushViewController(vc, animated: true)
        
    }
   
    
}
