//
//  AlexMoe.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 2/4/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit
import FirebaseAuth
class AlexMoe: UIViewController {

    let profileImage = UIImageView(image: UIImage(named: "AlexMoeButtonImg")).configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.contentMode = .scaleAspectFit
    }
    
    lazy var emailTextField = UITextField().configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.placeholder = "email"
        $0.textAlignment = .center
        $0.textColor = .tanTitle
        $0.delegate = self
        $0.keyboardType = .emailAddress
    }
    
    lazy var passTextField = UITextField().configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.placeholder = "password"
        $0.textAlignment = .center
        $0.textColor = .tanTitle
        $0.isSecureTextEntry = true
        $0.delegate = self
    }

    lazy var loginButton = UIButton().configured {
        $0.setTitle("Login", for: .normal)
        $0.layer.cornerRadius = 10
        $0.clipsToBounds = true
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .tanTitle
        $0.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
    }
    
    @objc func loginButtonPressed() {
        guard let email = emailTextField.text, let password = passTextField.text, Auth.auth().currentUser == nil else {
            return
        }
        
        
        Auth.auth().signIn(withEmail: email, password: password) { (_, error) in
            if let error = error {
                print(error)
            } else {
                // logged in
                self.loginButton.setTitle("Currently Logged In", for: .normal)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 255/255, green: 218/255, blue: 185/255, alpha: 1)
        navigationItem.title = "Alex Moe"
        setupViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            loginButton.setTitle("Already Logged In", for: .normal)
        }
    }

    func setupViews() {
        view.addSubview(profileImage)
        view.addSubview(emailTextField)
        view.addSubview(passTextField)
        view.addSubview(loginButton)
        
        profileImage.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: nil, bottom: nil, trailing: nil, padding: UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0), size: CGSize(width: 150, height: 150))
        profileImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        emailTextField.anchor(top: profileImage.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20), size: CGSize(width: 0, height: 50))
        
        passTextField.anchor(top: emailTextField.bottomAnchor, leading: emailTextField.leadingAnchor, bottom: nil, trailing: emailTextField.trailingAnchor, padding: UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0), size: CGSize(width: 0, height: 50))
        
        loginButton.anchor(top: nil, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor, padding: UIEdgeInsets(top: 0, left: 20, bottom: 20, right: 20), size: CGSize(width: 0, height: 50))
        
    }
}

extension AlexMoe: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
