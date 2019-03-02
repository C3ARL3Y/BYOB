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

    let profileImage = UIImageView(image: UIImage(named: "AlexMoeImg")).configured {
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
    
    lazy var scrollView = UIScrollView().configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
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
        let bar = UIBarButtonItem(title: "Signup", style: .plain, target: self, action: #selector(joinEmailList))
         bar.tintColor = .tanTitle
        navigationItem.rightBarButtonItem = bar
        setupViews()
    }
    
    @objc func joinEmailList() {
        let alert = UIAlertController(title: "", message: "Signup for Email List", preferredStyle: .alert)
        alert.addTextField(configurationHandler: { (textField) in
            textField.placeholder = "email address"
            textField.keyboardType = .emailAddress
        })
        let action = UIAlertAction(title: "Signup", style: .default, handler: { (updateAction) in
            if let email = alert.textFields?.first?.text, !email.isEmpty {
                FirebaseService.upload(emailAddress: email)
            }
        })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            loginButton.setTitle("Already Logged In", for: .normal)
        }
    }

    func setupViews() {
        view.addSubview(scrollView)
        
        scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height * 2)
        
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        scrollView.heightAnchor.constraint(equalTo: view.heightAnchor
            , multiplier: 0.75).isActive = true
        
        scrollView.addSubview(profileImage)
        scrollView.addSubview(emailTextField)
        scrollView.addSubview(passTextField)
        scrollView.addSubview(loginButton)
        
        profileImage.anchor(top: scrollView.topAnchor, leading: nil, bottom: nil, trailing: nil, padding: UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0), size: CGSize(width: 250, height: 250))
        profileImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        emailTextField.anchor(top: profileImage.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20), size: CGSize(width: 0, height: 50))
        
        passTextField.anchor(top: emailTextField.bottomAnchor, leading: emailTextField.leadingAnchor, bottom: nil, trailing: emailTextField.trailingAnchor, padding: UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0), size: CGSize(width: 0, height: 50))
        
        loginButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        loginButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.075).isActive = true
        loginButton.topAnchor.constraint(equalTo: passTextField.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
}

extension AlexMoe: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
