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
    
    lazy var label1 = UILabel().configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .tanTitle
        $0.textAlignment = .center
        $0.text = "Hey guys, Alex here, better known as @themacrobarista on Instagram! It’s a known fact that there are tons of calories packed into the things we eat and drink every day. When I realized that the coffee I was drinking was loaded with sugar, I decided to do something about it…"
        $0.lineBreakMode = .byWordWrapping
        $0.numberOfLines = 0
    }
    
    lazy var label2 = UILabel().configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .tanTitle
        $0.textAlignment = .center
        $0.text = "Over the last two years, I’ve made it my mission to put in the time and research to create more than 100 macro-friendly coffee recipes! The best way to bring you the pictures is through my Instagram page. That being said, it became apparent that there was another, more user friendly way I could provide value to you."
        $0.lineBreakMode = .byWordWrapping
        $0.numberOfLines = 0
    }
    
    lazy var label3 = UILabel().configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .tanTitle
        $0.textAlignment = .center
        $0.text = "I wanted to find a way for you to Be Your Own Barista, create your own drinks, and have an organized database for all of your favorite recipes!"
        $0.lineBreakMode = .byWordWrapping
        $0.numberOfLines = 0
    }
    
    lazy var label4 = UILabel().configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .tanTitle
        $0.textAlignment = .center
        $0.text = "So without further adieu, I want to welcome you to your very own app dedicated to help find you the perfect drink, or even create your own! I encourage you to be creative with the tools I’m giving you! Use this platform to your advantage, good luck, and BYOB!"
        $0.lineBreakMode = .byWordWrapping
        $0.numberOfLines = 0
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
        if view?.frame.width == 320 && view?.frame.height == 568 {
            scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height * 2)
            //5
        } else if view?.frame.width == 375 && view?.frame.height == 667 {
            scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height * 1.85)
            //normal 6,7,8
        } else if view?.frame.width == 414 && view?.frame.height ==  736 {
            scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height *
                1.75)
            //plus 6,7,8
        } else if view?.frame.width == 375 && view?.frame.height == 812 {
            scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height *
                1.6)
            //X and XS
        } else if view?.frame.width == 414 && view?.frame.height == 896 {
            // XR / XS Max
            scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height *
                1.55)
        }
        
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
        
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        scrollView.heightAnchor.constraint(equalTo: view.heightAnchor
            , multiplier: 0.75).isActive = true
        
        scrollView.addSubview(profileImage)
        scrollView.addSubview(emailTextField)
        scrollView.addSubview(passTextField)
        scrollView.addSubview(loginButton)
        scrollView.addSubview(label1)
        scrollView.addSubview(label2)
        scrollView.addSubview(label3)
        scrollView.addSubview(label4)
        
        profileImage.anchor(top: scrollView.topAnchor, leading: nil, bottom: nil, trailing: nil, padding: UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0), size: CGSize(width: 250, height: 250))
        profileImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        let maxLabelSize = CGSize(width: (view.frame.width * 0.95), height: CGFloat.greatestFiniteMagnitude)
        
        label1.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        let actualLabel1Size = label1.text!.boundingRect(with: maxLabelSize, options: [.usesLineFragmentOrigin], attributes: [.font: label1.font], context: nil)
        label1.heightAnchor.constraint(equalToConstant: actualLabel1Size.height).isActive = true
        label1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        label1.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        label1.topAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        
        label2.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        let actualLabel2Size = label2.text!.boundingRect(with: maxLabelSize, options: [.usesLineFragmentOrigin], attributes: [.font: label2.font], context: nil)
        label2.heightAnchor.constraint(equalToConstant: actualLabel2Size.height).isActive = true
        label2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        label2.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        label2.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        
        label3.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        let actualLabel3Size = label3.text!.boundingRect(with: maxLabelSize, options: [.usesLineFragmentOrigin], attributes: [.font: label3.font], context: nil)
        label3.heightAnchor.constraint(equalToConstant: actualLabel3Size.height).isActive = true
        label3.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        label3.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        label3.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        
        label4.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        let actualLabel4Size = label4.text!.boundingRect(with: maxLabelSize, options: [.usesLineFragmentOrigin], attributes: [.font: label4.font], context: nil)
        label4.heightAnchor.constraint(equalToConstant: actualLabel4Size.height).isActive = true
        label4.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        label4.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        label4.topAnchor.constraint(equalTo: label3.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        
        emailTextField.anchor(top: label4.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20), size: CGSize(width: 0, height: 50))
        
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
