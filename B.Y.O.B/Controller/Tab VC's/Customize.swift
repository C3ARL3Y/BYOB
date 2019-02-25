//
//  Customize.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 2/4/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class Customize: UIViewController {
    
    // logo | Customize Logo
    // Your order label
    // order details and Nutrition details
    // Start your custom drink
    //  edit order
    // reset order
    
   
    let scrollView: UIScrollView = {
        let sv = UIScrollView()
        
        sv.translatesAutoresizingMaskIntoConstraints = false
        
        return sv
    }()
    
    let logo: UIImageView = {
       let imageView = UIImageView()
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "BYOBLogo")
        
        return imageView
    }()
    
    let customizeLabel: UIImageView = {
        let imageView = UIImageView()
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "CustomizeLabel")
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    let yourDrinkLabel: UILabel = {
      let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Your Custom Drink"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        
        return label
    }()
    
    let beginOrderButton: UIButton = {
       let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Tap To Begin Customizing Your Drink!", for: UIControl.State.normal)
        button.setTitleColor(UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1), for: UIControl.State.normal)
        button.titleLabel?.lineBreakMode = .byCharWrapping
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = .center
        button.addTarget(self, action: #selector(handleBeginDrink), for: .touchUpInside)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadCustomDrink()
        setupView()
        setupScrollView()
    }
    
    private func setupView() {
        view.backgroundColor = UIColor(red: 255/255, green: 218/255, blue: 185/255, alpha: 1)
        navigationItem.title = "Customize"
        
        view.addSubview(scrollView)
        
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        scrollView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.8).isActive = true
    }
    
    func setupScrollView() {
        scrollView.addSubview(logo)
        scrollView.addSubview(customizeLabel)
        scrollView.addSubview(yourDrinkLabel)
        
        logo.leftAnchor.constraint(equalTo: view.leftAnchor, constant: (view.frame.width * 0.05)).isActive = true
        logo.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: (view.frame.height * 0.025)).isActive = true
        logo.widthAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.15).isActive = true
        logo.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.15).isActive = true
        
        customizeLabel.leftAnchor.constraint(equalTo: logo.rightAnchor, constant: view.frame.width * 0.05).isActive = true
        customizeLabel.centerYAnchor.constraint(equalTo: logo.centerYAnchor).isActive = true
        customizeLabel.heightAnchor.constraint(equalTo: logo.heightAnchor, multiplier: 1).isActive = true
        customizeLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.55).isActive = true
        
        yourDrinkLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        yourDrinkLabel.topAnchor.constraint(equalTo: customizeLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        yourDrinkLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75).isActive = true
        yourDrinkLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        yourDrinkLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.075)
        
        if true {
            scrollView.addSubview(beginOrderButton)
            
            beginOrderButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            beginOrderButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: (view.frame.height * 0.125)).isActive = true
            beginOrderButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
            beginOrderButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2).isActive = true
            beginOrderButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
            
        } else {
            // add in the reset and edit order buttons
            // also add in the order labels
            scrollView.bounces = true
            scrollView.alwaysBounceVertical = true
            scrollView.alwaysBounceHorizontal = false
        }
        
    }

    private func loadCustomDrink() {
        let standard = UserDefaults.standard
        for key in UDKeys.allCases {
            let key = key.rawValue
            if standard.value(forKey: key) != nil {
                // Has data
                if let stringValue = standard.value(forKey: key) as? String {
                    if let coffeeBase = CoffeeBaseType.init(rawValue: stringValue) {
                        print(coffeeBase)
                    } else if let extras = ExtraType.init(rawValue: stringValue) {
                        print(extras)
                    }
                }
                
                if let dict = standard.value(forKey: key) as? [String: Int] {
                    print(dict)
                }
                
            }
        }
    }
    
    @objc func handleBeginDrink() {
        handleReset()
        present(CustomCoffeeBase(), animated: true)
    }
    
    @objc func handleEditDrink() {
        
    }
    
    @objc func handleReset() {
        UserDefaults.standard.synchronize()
        // remove anything that need to be and then add in the begin drink button
    }
}
