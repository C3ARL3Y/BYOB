//
//  CustomCoffeeExtras.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 2/12/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class CustomCoffeeExtras: UIViewController {
    
    var noExtras = UserDefaults.standard.bool(forKey: "noExtras")
    
    var lightCaramelDrizzleServing = UserDefaults.standard.integer(forKey: "lightCaramelDrizzleServing")
    var lightMochaDrizzleServing = UserDefaults.standard.integer(forKey: "lightMochaDrizzleServing")
    var cinnamonPowderServing = UserDefaults.standard.integer(forKey: "cinnamonPowderServing")
    var sugarFreeColdFoamServing = UserDefaults.standard.integer(forKey: "sugarFreeColdFoamServing")
    
    let extrasTitle: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Extras"
        label.textAlignment = .center
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return label
    }()
    
    let scrollView: UIScrollView = {
        let sv = UIScrollView()
        
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.bounces = true
        sv.alwaysBounceVertical = true
        sv.alwaysBounceHorizontal = false
        
        return sv
    }()
    
    let backButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Back", for: UIControl.State.normal)
        button.setTitleColor(UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1), for: UIControl.State.normal)
        button.titleLabel?.textAlignment = .center
        button.addTarget(self, action: #selector(handleBack), for: .touchUpInside)
        
        return button
    }()
    
    let finishButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Finish", for: UIControl.State.normal)
        button.setTitleColor(UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1), for: UIControl.State.normal)
        button.titleLabel?.textAlignment = .center
        button.addTarget(self, action: #selector(handleFinish), for: .touchUpInside)
        
        return button
    }()
    
    let lightCaramelDrizzleLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Light Caramel Drizzle"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let lightMochaDrizzleLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Light Mocha     Drizzle"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let cinnamonPowderLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Cinnamon        Powder"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let sugarFreeColdFoamLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sugar Free      Cold Foam"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let lightCaramelDrizzleCheckBox: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "UnCheckbox"), for: UIControl.State.normal)
        button.setImage(UIImage(named: "Checkbox"), for: UIControl.State.selected)
        button.addTarget(self, action: #selector(handleLightCaramelDrizzleCheckBox), for: .touchUpInside)
        
        return button
    }()
    
    let lightMochaDrizzleCheckBox: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "UnCheckbox"), for: UIControl.State.normal)
        button.setImage(UIImage(named: "Checkbox"), for: UIControl.State.selected)
        button.addTarget(self, action: #selector(handleLightMochaDrizzleCheckBox), for: .touchUpInside)
        
        return button
    }()
    
    let cinnamonBoxCheckBox: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "UnCheckbox"), for: UIControl.State.normal)
        button.setImage(UIImage(named: "Checkbox"), for: UIControl.State.selected)
        button.addTarget(self, action: #selector(handleCinnamonPowderCheckBox), for: .touchUpInside)
        
        return button
    }()
    
    let sugarFreeColdFoamCheckBox: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "UnCheckbox"), for: UIControl.State.normal)
        button.setImage(UIImage(named: "Checkbox"), for: UIControl.State.selected)
        button.addTarget(self, action: #selector(handleSugarFreeColdFoamCheckBox), for: .touchUpInside)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupScrollView()
    }
    
    private func setupView() {
        view.backgroundColor = UIColor(red: 255/255, green: 218/255, blue: 185/255, alpha: 1)
        
        scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height * 0.65)
        
        view.addSubview(extrasTitle)
        view.addSubview(backButton)
        view.addSubview(scrollView)
        view.addSubview(finishButton)
        
        extrasTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        extrasTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.height * 0.05).isActive = true
        extrasTitle.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        extrasTitle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        extrasTitle.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.075)
        
        backButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45).isActive = true
        backButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        backButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.025).isActive = true
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -(view.frame.width * 0.05)).isActive = true
        backButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.075)
        
        finishButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45).isActive = true
        finishButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        finishButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -(view.frame.width * 0.025)).isActive = true
        finishButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -(view.frame.width * 0.05)).isActive = true
        finishButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.075)
        
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        scrollView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7).isActive = true
    }
    
    func setupScrollView() {
        scrollView.addSubview(lightCaramelDrizzleLabel)
        scrollView.addSubview(lightMochaDrizzleLabel)
        scrollView.addSubview(cinnamonPowderLabel)
        scrollView.addSubview(sugarFreeColdFoamLabel)
        
        lightCaramelDrizzleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        lightCaramelDrizzleLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: view.frame.height * 0.05).isActive = true
        lightCaramelDrizzleLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45).isActive = true
        lightCaramelDrizzleLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.095).isActive = true
        lightCaramelDrizzleLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        lightMochaDrizzleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        lightMochaDrizzleLabel.topAnchor.constraint(equalTo: lightCaramelDrizzleLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        lightMochaDrizzleLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45).isActive = true
        lightMochaDrizzleLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.095).isActive = true
        lightMochaDrizzleLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        cinnamonPowderLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        cinnamonPowderLabel.topAnchor.constraint(equalTo: lightMochaDrizzleLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        cinnamonPowderLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45).isActive = true
        cinnamonPowderLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.095).isActive = true
        cinnamonPowderLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        sugarFreeColdFoamLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        sugarFreeColdFoamLabel.topAnchor.constraint(equalTo: cinnamonPowderLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        sugarFreeColdFoamLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45).isActive = true
        sugarFreeColdFoamLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.095).isActive = true
        sugarFreeColdFoamLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        view.addSubview(lightCaramelDrizzleCheckBox)
        view.addSubview(lightMochaDrizzleCheckBox)
        view.addSubview(cinnamonBoxCheckBox)
        view.addSubview(sugarFreeColdFoamCheckBox)
        
        lightCaramelDrizzleCheckBox.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -(view.frame.width * 0.175)).isActive = true
        lightCaramelDrizzleCheckBox.centerYAnchor.constraint(equalTo: lightCaramelDrizzleLabel.centerYAnchor).isActive = true
        lightCaramelDrizzleCheckBox.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        lightCaramelDrizzleCheckBox.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        
        lightMochaDrizzleCheckBox.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -(view.frame.width * 0.175)).isActive = true
        lightMochaDrizzleCheckBox.centerYAnchor.constraint(equalTo: lightMochaDrizzleLabel.centerYAnchor).isActive = true
        lightMochaDrizzleCheckBox.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        lightMochaDrizzleCheckBox.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        
        cinnamonBoxCheckBox.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -(view.frame.width * 0.175)).isActive = true
        cinnamonBoxCheckBox.centerYAnchor.constraint(equalTo: cinnamonPowderLabel.centerYAnchor).isActive = true
        cinnamonBoxCheckBox.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        cinnamonBoxCheckBox.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        
        sugarFreeColdFoamCheckBox.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -(view.frame.width * 0.175)).isActive = true
        sugarFreeColdFoamCheckBox.centerYAnchor.constraint(equalTo: sugarFreeColdFoamLabel.centerYAnchor).isActive = true
        sugarFreeColdFoamCheckBox.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        sugarFreeColdFoamCheckBox.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
    }
    
    @objc func handleBack() {
        self.dismiss(animated: true) {}
    }
    
    @objc func handleFinish() {
        if lightCaramelDrizzleCheckBox.isSelected == true {
            lightCaramelDrizzleServing = 1
            UserDefaults.standard.set(1, forKey: "lightCaramelDrizzleServing")
        }
        if lightMochaDrizzleCheckBox.isSelected == true {
            lightMochaDrizzleServing = 1
            UserDefaults.standard.set(1, forKey: "lightMochaDrizzleServing")
        }
        if cinnamonBoxCheckBox.isSelected == true {
            cinnamonPowderServing = 1
            UserDefaults.standard.set(1, forKey: "cinnamonPowderServing")
        }
        if sugarFreeColdFoamCheckBox.isSelected == true {
            sugarFreeColdFoamServing = 1
            UserDefaults.standard.set(1, forKey: "sugarFreeColdFoamServing")
        }
        UserDefaults.standard.synchronize()
        
        self.view.window?.rootViewController?.dismiss(animated: true, completion: {
            Customize().setupScrollView()
        })
    }
    
    @objc func handleLightCaramelDrizzleCheckBox(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
            lightCaramelDrizzleServing = 1
            UserDefaults.standard.set(1, forKey: "lightCaramelDrizzleServing")
            
        }
    }
    
    @objc func handleLightMochaDrizzleCheckBox(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
            lightMochaDrizzleServing = 1
            UserDefaults.standard.set(1, forKey: "lightMochaDrizzleServing")
            
        }
    }
    
    @objc func handleCinnamonPowderCheckBox(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
            cinnamonPowderServing = 1
            UserDefaults.standard.set(1, forKey: "cinnamonPowderServing")
            
        }
    }
    
    @objc func handleSugarFreeColdFoamCheckBox(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
            sugarFreeColdFoamServing = 1
            UserDefaults.standard.set(1, forKey: "sugarFreeColdFoamServing")
            
        }
    }
    
}
