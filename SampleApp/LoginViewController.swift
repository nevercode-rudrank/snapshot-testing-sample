//
//  LoginViewController.swift
//  SampleApp
//
//  Created by Roberto Frontado on 17/09/2020.
//  Copyright © 2020 Roberto Frontado. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let emailLabel = UILabel()
    private let emailTextField = TextField()
    private let passwordLabel = UILabel()
    private let passwordTextField = TextField()
    private let loginButton = Button()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login"
        view.backgroundColor = .white
        
        emailLabel.text = "Email"
        passwordLabel.text = "Password"
        passwordLabel.layer.shadowColor = .init(red: 0.8, green: 0.1, blue: 0.3, alpha: 1)
        passwordTextField.isSecureTextEntry = true
        loginButton.setTitle("Login", for: .normal)
        [emailTextField, passwordTextField].forEach {
            $0.layer.borderColor = UIColor.systemGray.cgColor
            $0.layer.borderWidth = 1
            $0.layer.cornerRadius = 16
            $0.layer.shadowRadius = 16
            $0.layer.shadowColor = CGColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0)
        }
        
        let emailStackView = UIStackView(arrangedSubviews: [emailLabel, emailTextField])
        let passwordStackView = UIStackView(arrangedSubviews: [passwordLabel, passwordTextField])
        
        [emailStackView, passwordStackView].forEach {
            $0.axis = .vertical
            $0.spacing = 8
        }
        
        let stackView = UIStackView(arrangedSubviews: [emailStackView, passwordStackView, loginButton])
        
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 32
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
