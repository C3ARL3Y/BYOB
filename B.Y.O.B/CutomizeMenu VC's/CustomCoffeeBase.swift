//
//  CustomCoffeeBase.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 2/6/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class CustomCoffeeBase: UIViewController {
    
    var coffeeBase = UserDefaults.standard.string(forKey: "coffeeBase")
    var noCoffeeBase = UserDefaults.standard.bool(forKey: "noCoffeeBase")
    
    let coffeeBaseTitle: UILabel = {
       let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Coffee Base"
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
    
    let nextButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Next", for: UIControl.State.normal)
        button.setTitleColor(UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1), for: UIControl.State.normal)
        button.titleLabel?.textAlignment = .center
        button.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
        
        return button
    }()
    
    let hotCoffeeLabel: UILabel = {
       let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hot Coffee"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let icedCoffeeLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Iced Coffee"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let coldBrewLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Cold Brew"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let americanoIcedLabel: UILabel = {
       let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Iced Americano"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let americanoHotLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hot Americano"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let greenIcedTeaLabel: UILabel = {
       let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Green Iced Tea"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let whiteIcedTeaLabel: UILabel = {
       let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "White Iced Tea"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let blackIcedTeaLabel: UILabel = {
       let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Black Iced Tea"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let passionTangoIcedTeaLabel: UILabel = {
       let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Passion Tango Iced Tea"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let hotCoffeeCheckBox: UIButton = {
       let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "UnCheckbox"), for: UIControl.State.normal)
        button.setImage(UIImage(named: "Checkbox"), for: UIControl.State.selected)
        button.addTarget(self, action: #selector(handleHotCoffeeCheckBox), for: .touchUpInside)
        
        return button
    }()
    
    let icedCoffeeCheckBox: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "UnCheckbox"), for: UIControl.State.normal)
        button.setImage(UIImage(named: "Checkbox"), for: UIControl.State.selected)
        button.addTarget(self, action: #selector(handleIcedCoffeeCheckBox), for: .touchUpInside)
        
        return button
    }()
    
    let coldBrewCheckBox: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "UnCheckbox"), for: UIControl.State.normal)
        button.setImage(UIImage(named: "Checkbox"), for: UIControl.State.selected)
        button.addTarget(self, action: #selector(handleColdBrewCheckBox), for: .touchUpInside)
        
        return button
    }()
    
    let icedAmericanoCheckBox: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "UnCheckbox"), for: UIControl.State.normal)
        button.setImage(UIImage(named: "Checkbox"), for: UIControl.State.selected)
        button.addTarget(self, action: #selector(handleIcedAmericanoCheckBox), for: .touchUpInside)
        
        return button
    }()
    
    let hotAmericanoCheckBox: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "UnCheckbox"), for: UIControl.State.normal)
        button.setImage(UIImage(named: "Checkbox"), for: UIControl.State.selected)
        button.addTarget(self, action: #selector(handleHotAmericanoCheckBox), for: .touchUpInside)
        
        return button
    }()
    
    let greenIcedTeaCheckBox: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "UnCheckbox"), for: UIControl.State.normal)
        button.setImage(UIImage(named: "Checkbox"), for: UIControl.State.selected)
        button.addTarget(self, action: #selector(handleGreenIcedTeaCheckBox), for: .touchUpInside)
        
        return button
    }()
    
    let whiteIcedTeaCheckBox: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "UnCheckbox"), for: UIControl.State.normal)
        button.setImage(UIImage(named: "Checkbox"), for: UIControl.State.selected)
        button.addTarget(self, action: #selector(handleWhiteIcedTeaCheckBox), for: .touchUpInside)
        
        return button
    }()
    
    let blackIcedTeaCheckBox: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "UnCheckbox"), for: UIControl.State.normal)
        button.setImage(UIImage(named: "Checkbox"), for: UIControl.State.selected)
        button.addTarget(self, action: #selector(handleBlackIcedTeaCheckBox), for: .touchUpInside)
        
        return button
    }()
    
    let passionTangoIcedTeaCheckBox: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "UnCheckbox"), for: UIControl.State.normal)
        button.setImage(UIImage(named: "Checkbox"), for: UIControl.State.selected)
        button.addTarget(self, action: #selector(handlePassionTangoIcedTeaCheckBox), for: .touchUpInside)
        
        return button
    }()
    
    let hotCoffeeCaloriesLabelTall: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Tall: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    
    let hotCoffeeCaloriesLabelGrande: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Grande: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let hotCoffeeCaloriesLabelVenti: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Venti: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let icedCoffeeCaloriesLabelTall: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Tall: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    
    let icedCoffeeCaloriesLabelGrande: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Grande: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let icedCoffeeCaloriesLabelVenti: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Venti: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let coldBrewCaloriesLabelTall: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Tall: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    
    let coldBrewCaloriesLabelGrande: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Grande: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let coldBrewCaloriesLabelVenti: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Venti: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let icedAmericanoCaloriesLabelTall: UILabel = {
    let label = UILabel()
    
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Tall: 0 Calories"
    label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
    label.textAlignment = .center
    label.lineBreakMode = .byCharWrapping
    label.numberOfLines = 0
    label.textAlignment = .center
    
    return label
    }()
    
    
    let icedAmericanoCaloriesLabelGrande: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Grande: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let icedAmericanoCaloriesLabelVenti: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Venti: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()

    let hotAmericanoCaloriesLabelTall: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Tall: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    
    let hotAmericanoCaloriesLabelGrande: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Grande: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let hotAmericanoCaloriesLabelVenti: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Venti: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let greenIcedTeaCaloriesLabelTall: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Tall: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    
    let greenIcedTeaCaloriesLabelGrande: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Grande: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let greenIcedTeaCaloriesLabelVenti: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Venti: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let whiteIcedTeaCaloriesLabelTall: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Tall: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    
    let whiteIcedTeaCaloriesLabelGrande: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Grande: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let whiteIcedTeaCaloriesLabelVenti: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Venti: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let blackIcedTeaCaloriesLabelTall: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Tall: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    
    let blackIcedTeaCaloriesLabelGrande: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Grande: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let blackIcedTeaCaloriesLabelVenti: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Venti: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let passionTangoIcedTeaCaloriesLabelTall: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Tall: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    
    let passionTangoIcedTeaCaloriesLabelGrande: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Grande: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let passionTangoIcedTeaCaloriesLabelVenti: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Venti: 0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupScrollView()
    }
    
    private func setupView() {
        view.backgroundColor = UIColor(red: 255/255, green: 218/255, blue: 185/255, alpha: 1)
        
        scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height * 2.65)
        
        view.addSubview(coffeeBaseTitle)
        view.addSubview(backButton)
        view.addSubview(nextButton)
        view.addSubview(scrollView)
        
        coffeeBaseTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        coffeeBaseTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.height * 0.05).isActive = true
        coffeeBaseTitle.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        coffeeBaseTitle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        coffeeBaseTitle.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.075)
        
        backButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45).isActive = true
        backButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        backButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.025).isActive = true
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -(view.frame.width * 0.05)).isActive = true
        backButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.075)
        
        nextButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45).isActive = true
        nextButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        nextButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -(view.frame.width * 0.025)).isActive = true
        nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -(view.frame.width * 0.05)).isActive = true
        nextButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.075)
        
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        scrollView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7).isActive = true
    }
    
    private func setupScrollView() {
        scrollView.addSubview(hotCoffeeLabel)
        scrollView.addSubview(icedCoffeeLabel)
        scrollView.addSubview(coldBrewLabel)
        scrollView.addSubview(americanoIcedLabel)
        scrollView.addSubview(americanoHotLabel)
        scrollView.addSubview(greenIcedTeaLabel)
        scrollView.addSubview(whiteIcedTeaLabel)
        scrollView.addSubview(blackIcedTeaLabel)
        scrollView.addSubview(passionTangoIcedTeaLabel)
        
        hotCoffeeLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        hotCoffeeLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: view.frame.height * 0.05).isActive = true
        hotCoffeeLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.575).isActive = true
        hotCoffeeLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        hotCoffeeLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(hotCoffeeCaloriesLabelTall)
        scrollView.addSubview(hotCoffeeCaloriesLabelGrande)
        scrollView.addSubview(hotCoffeeCaloriesLabelVenti)
        
        hotCoffeeCaloriesLabelTall.centerXAnchor.constraint(equalTo: hotCoffeeLabel.centerXAnchor).isActive = true
        hotCoffeeCaloriesLabelTall.topAnchor.constraint(equalTo: hotCoffeeLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        hotCoffeeCaloriesLabelTall.widthAnchor.constraint(equalTo: hotCoffeeLabel.widthAnchor).isActive = true
        hotCoffeeCaloriesLabelTall.heightAnchor.constraint(equalTo: hotCoffeeLabel.heightAnchor, multiplier: 0.75).isActive = true
        hotCoffeeCaloriesLabelTall.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        hotCoffeeCaloriesLabelGrande.centerXAnchor.constraint(equalTo: hotCoffeeLabel.centerXAnchor).isActive = true
        hotCoffeeCaloriesLabelGrande.topAnchor.constraint(equalTo: hotCoffeeCaloriesLabelTall.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        hotCoffeeCaloriesLabelGrande.widthAnchor.constraint(equalTo: hotCoffeeLabel.widthAnchor).isActive = true
        hotCoffeeCaloriesLabelGrande.heightAnchor.constraint(equalTo: hotCoffeeLabel.heightAnchor, multiplier: 0.75).isActive = true
        hotCoffeeCaloriesLabelGrande.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        hotCoffeeCaloriesLabelVenti.centerXAnchor.constraint(equalTo: hotCoffeeLabel.centerXAnchor).isActive = true
        hotCoffeeCaloriesLabelVenti.topAnchor.constraint(equalTo: hotCoffeeCaloriesLabelGrande.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        hotCoffeeCaloriesLabelVenti.widthAnchor.constraint(equalTo: hotCoffeeLabel.widthAnchor).isActive = true
        hotCoffeeCaloriesLabelVenti.heightAnchor.constraint(equalTo: hotCoffeeLabel.heightAnchor, multiplier: 0.75).isActive = true
        hotCoffeeCaloriesLabelVenti.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        icedCoffeeLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        icedCoffeeLabel.topAnchor.constraint(equalTo: hotCoffeeCaloriesLabelVenti.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        icedCoffeeLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.575).isActive = true
        icedCoffeeLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        icedCoffeeLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(icedCoffeeCaloriesLabelTall)
        scrollView.addSubview(icedCoffeeCaloriesLabelGrande)
        scrollView.addSubview(icedCoffeeCaloriesLabelVenti)
        
        icedCoffeeCaloriesLabelTall.centerXAnchor.constraint(equalTo: icedCoffeeLabel.centerXAnchor).isActive = true
        icedCoffeeCaloriesLabelTall.topAnchor.constraint(equalTo: icedCoffeeLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        icedCoffeeCaloriesLabelTall.widthAnchor.constraint(equalTo: icedCoffeeLabel.widthAnchor).isActive = true
        icedCoffeeCaloriesLabelTall.heightAnchor.constraint(equalTo: icedCoffeeLabel.heightAnchor, multiplier: 0.75).isActive = true
        icedCoffeeCaloriesLabelTall.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        icedCoffeeCaloriesLabelGrande.centerXAnchor.constraint(equalTo: icedCoffeeLabel.centerXAnchor).isActive = true
        icedCoffeeCaloriesLabelGrande.topAnchor.constraint(equalTo: icedCoffeeCaloriesLabelTall.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        icedCoffeeCaloriesLabelGrande.widthAnchor.constraint(equalTo:   icedCoffeeLabel.widthAnchor).isActive = true
        icedCoffeeCaloriesLabelGrande.heightAnchor.constraint(equalTo: icedCoffeeLabel.heightAnchor, multiplier: 0.75).isActive = true
        icedCoffeeCaloriesLabelGrande.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        icedCoffeeCaloriesLabelVenti.centerXAnchor.constraint(equalTo: icedCoffeeLabel.centerXAnchor).isActive = true
        icedCoffeeCaloriesLabelVenti.topAnchor.constraint(equalTo: icedCoffeeCaloriesLabelGrande.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        icedCoffeeCaloriesLabelVenti.widthAnchor.constraint(equalTo: icedCoffeeLabel.widthAnchor).isActive = true
        icedCoffeeCaloriesLabelVenti.heightAnchor.constraint(equalTo: icedCoffeeLabel.heightAnchor, multiplier: 0.75).isActive = true
        icedCoffeeCaloriesLabelVenti.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        coldBrewLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        coldBrewLabel.topAnchor.constraint(equalTo: icedCoffeeCaloriesLabelVenti.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        coldBrewLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.575).isActive = true
        coldBrewLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        coldBrewLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(coldBrewCaloriesLabelTall)
        scrollView.addSubview(coldBrewCaloriesLabelGrande)
        scrollView.addSubview(coldBrewCaloriesLabelVenti)
        
        coldBrewCaloriesLabelTall.centerXAnchor.constraint(equalTo: coldBrewLabel.centerXAnchor).isActive = true
        coldBrewCaloriesLabelTall.topAnchor.constraint(equalTo: coldBrewLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        coldBrewCaloriesLabelTall.widthAnchor.constraint(equalTo: coldBrewLabel.widthAnchor).isActive = true
        coldBrewCaloriesLabelTall.heightAnchor.constraint(equalTo: coldBrewLabel.heightAnchor, multiplier: 0.75).isActive = true
        coldBrewCaloriesLabelTall.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        coldBrewCaloriesLabelGrande.centerXAnchor.constraint(equalTo: coldBrewLabel.centerXAnchor).isActive = true
        coldBrewCaloriesLabelGrande.topAnchor.constraint(equalTo: coldBrewCaloriesLabelTall.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        coldBrewCaloriesLabelGrande.widthAnchor.constraint(equalTo:   coldBrewLabel.widthAnchor).isActive = true
        coldBrewCaloriesLabelGrande.heightAnchor.constraint(equalTo: coldBrewLabel.heightAnchor, multiplier: 0.75).isActive = true
        coldBrewCaloriesLabelGrande.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        coldBrewCaloriesLabelVenti.centerXAnchor.constraint(equalTo: coldBrewLabel.centerXAnchor).isActive = true
        coldBrewCaloriesLabelVenti.topAnchor.constraint(equalTo: coldBrewCaloriesLabelGrande.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        coldBrewCaloriesLabelVenti.widthAnchor.constraint(equalTo: coldBrewLabel.widthAnchor).isActive = true
        coldBrewCaloriesLabelVenti.heightAnchor.constraint(equalTo: coldBrewLabel.heightAnchor, multiplier: 0.75).isActive = true
        coldBrewCaloriesLabelVenti.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        americanoIcedLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        americanoIcedLabel.topAnchor.constraint(equalTo: coldBrewCaloriesLabelVenti.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        americanoIcedLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.575).isActive = true
        americanoIcedLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        americanoIcedLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(icedAmericanoCaloriesLabelTall)
        scrollView.addSubview(icedAmericanoCaloriesLabelGrande)
        scrollView.addSubview(icedAmericanoCaloriesLabelVenti)
        
        icedAmericanoCaloriesLabelTall.centerXAnchor.constraint(equalTo: americanoIcedLabel.centerXAnchor).isActive = true
        icedAmericanoCaloriesLabelTall.topAnchor.constraint(equalTo: americanoIcedLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        icedAmericanoCaloriesLabelTall.widthAnchor.constraint(equalTo: americanoIcedLabel.widthAnchor).isActive = true
        icedAmericanoCaloriesLabelTall.heightAnchor.constraint(equalTo: americanoIcedLabel.heightAnchor, multiplier: 0.75).isActive = true
        icedAmericanoCaloriesLabelTall.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        icedAmericanoCaloriesLabelGrande.centerXAnchor.constraint(equalTo: americanoIcedLabel.centerXAnchor).isActive = true
        icedAmericanoCaloriesLabelGrande.topAnchor.constraint(equalTo: icedAmericanoCaloriesLabelTall.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        icedAmericanoCaloriesLabelGrande.widthAnchor.constraint(equalTo:   americanoIcedLabel.widthAnchor).isActive = true
        icedAmericanoCaloriesLabelGrande.heightAnchor.constraint(equalTo: americanoIcedLabel.heightAnchor, multiplier: 0.75).isActive = true
        icedAmericanoCaloriesLabelGrande.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        icedAmericanoCaloriesLabelVenti.centerXAnchor.constraint(equalTo: americanoIcedLabel.centerXAnchor).isActive = true
        icedAmericanoCaloriesLabelVenti.topAnchor.constraint(equalTo: icedAmericanoCaloriesLabelGrande.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        icedAmericanoCaloriesLabelVenti.widthAnchor.constraint(equalTo: americanoIcedLabel.widthAnchor).isActive = true
        icedAmericanoCaloriesLabelVenti.heightAnchor.constraint(equalTo: americanoIcedLabel.heightAnchor, multiplier: 0.75).isActive = true
        icedAmericanoCaloriesLabelVenti.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        americanoHotLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        americanoHotLabel.topAnchor.constraint(equalTo: icedAmericanoCaloriesLabelVenti.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        americanoHotLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.575).isActive = true
        americanoHotLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        americanoHotLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(hotAmericanoCaloriesLabelTall)
        scrollView.addSubview(hotAmericanoCaloriesLabelGrande)
        scrollView.addSubview(hotAmericanoCaloriesLabelVenti)
        
        hotAmericanoCaloriesLabelTall.centerXAnchor.constraint(equalTo: americanoHotLabel.centerXAnchor).isActive = true
        hotAmericanoCaloriesLabelTall.topAnchor.constraint(equalTo: americanoHotLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        hotAmericanoCaloriesLabelTall.widthAnchor.constraint(equalTo: americanoHotLabel.widthAnchor).isActive = true
        hotAmericanoCaloriesLabelTall.heightAnchor.constraint(equalTo: americanoHotLabel.heightAnchor, multiplier: 0.75).isActive = true
        hotAmericanoCaloriesLabelTall.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        hotAmericanoCaloriesLabelGrande.centerXAnchor.constraint(equalTo: americanoHotLabel.centerXAnchor).isActive = true
        hotAmericanoCaloriesLabelGrande.topAnchor.constraint(equalTo: hotAmericanoCaloriesLabelTall.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        hotAmericanoCaloriesLabelGrande.widthAnchor.constraint(equalTo:   americanoHotLabel.widthAnchor).isActive = true
        hotAmericanoCaloriesLabelGrande.heightAnchor.constraint(equalTo: americanoHotLabel.heightAnchor, multiplier: 0.75).isActive = true
        hotAmericanoCaloriesLabelGrande.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        hotAmericanoCaloriesLabelVenti.centerXAnchor.constraint(equalTo: americanoHotLabel.centerXAnchor).isActive = true
        hotAmericanoCaloriesLabelVenti.topAnchor.constraint(equalTo: hotAmericanoCaloriesLabelGrande.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        hotAmericanoCaloriesLabelVenti.widthAnchor.constraint(equalTo: americanoHotLabel.widthAnchor).isActive = true
        hotAmericanoCaloriesLabelVenti.heightAnchor.constraint(equalTo: americanoHotLabel.heightAnchor, multiplier: 0.75).isActive = true
        hotAmericanoCaloriesLabelVenti.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        greenIcedTeaLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        greenIcedTeaLabel.topAnchor.constraint(equalTo: hotAmericanoCaloriesLabelVenti.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        greenIcedTeaLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.575).isActive = true
        greenIcedTeaLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        greenIcedTeaLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(greenIcedTeaCaloriesLabelTall)
        scrollView.addSubview(greenIcedTeaCaloriesLabelGrande)
        scrollView.addSubview(greenIcedTeaCaloriesLabelVenti)
        
        greenIcedTeaCaloriesLabelTall.centerXAnchor.constraint(equalTo: greenIcedTeaLabel.centerXAnchor).isActive = true
        greenIcedTeaCaloriesLabelTall.topAnchor.constraint(equalTo: greenIcedTeaLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        greenIcedTeaCaloriesLabelTall.widthAnchor.constraint(equalTo: greenIcedTeaLabel.widthAnchor).isActive = true
        greenIcedTeaCaloriesLabelTall.heightAnchor.constraint(equalTo: greenIcedTeaLabel.heightAnchor, multiplier: 0.75).isActive = true
        greenIcedTeaCaloriesLabelTall.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        greenIcedTeaCaloriesLabelGrande.centerXAnchor.constraint(equalTo: greenIcedTeaLabel.centerXAnchor).isActive = true
        greenIcedTeaCaloriesLabelGrande.topAnchor.constraint(equalTo: greenIcedTeaCaloriesLabelTall.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        greenIcedTeaCaloriesLabelGrande.widthAnchor.constraint(equalTo:   greenIcedTeaLabel.widthAnchor).isActive = true
        greenIcedTeaCaloriesLabelGrande.heightAnchor.constraint(equalTo: greenIcedTeaLabel.heightAnchor, multiplier: 0.75).isActive = true
        greenIcedTeaCaloriesLabelGrande.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        greenIcedTeaCaloriesLabelVenti.centerXAnchor.constraint(equalTo: greenIcedTeaLabel.centerXAnchor).isActive = true
        greenIcedTeaCaloriesLabelVenti.topAnchor.constraint(equalTo: greenIcedTeaCaloriesLabelGrande.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        greenIcedTeaCaloriesLabelVenti.widthAnchor.constraint(equalTo: greenIcedTeaLabel.widthAnchor).isActive = true
        greenIcedTeaCaloriesLabelVenti.heightAnchor.constraint(equalTo: greenIcedTeaLabel.heightAnchor, multiplier: 0.75).isActive = true
        greenIcedTeaCaloriesLabelVenti.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        whiteIcedTeaLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        whiteIcedTeaLabel.topAnchor.constraint(equalTo: greenIcedTeaCaloriesLabelVenti.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        whiteIcedTeaLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.575).isActive = true
        whiteIcedTeaLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        whiteIcedTeaLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(whiteIcedTeaCaloriesLabelTall)
        scrollView.addSubview(whiteIcedTeaCaloriesLabelGrande)
        scrollView.addSubview(whiteIcedTeaCaloriesLabelVenti)
        
        whiteIcedTeaCaloriesLabelTall.centerXAnchor.constraint(equalTo: whiteIcedTeaLabel.centerXAnchor).isActive = true
        whiteIcedTeaCaloriesLabelTall.topAnchor.constraint(equalTo: whiteIcedTeaLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        whiteIcedTeaCaloriesLabelTall.widthAnchor.constraint(equalTo: whiteIcedTeaLabel.widthAnchor).isActive = true
        whiteIcedTeaCaloriesLabelTall.heightAnchor.constraint(equalTo: whiteIcedTeaLabel.heightAnchor, multiplier: 0.75).isActive = true
        whiteIcedTeaCaloriesLabelTall.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        whiteIcedTeaCaloriesLabelGrande.centerXAnchor.constraint(equalTo: whiteIcedTeaLabel.centerXAnchor).isActive = true
        whiteIcedTeaCaloriesLabelGrande.topAnchor.constraint(equalTo: whiteIcedTeaCaloriesLabelTall.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        whiteIcedTeaCaloriesLabelGrande.widthAnchor.constraint(equalTo:   whiteIcedTeaLabel.widthAnchor).isActive = true
        whiteIcedTeaCaloriesLabelGrande.heightAnchor.constraint(equalTo: whiteIcedTeaLabel.heightAnchor, multiplier: 0.75).isActive = true
        whiteIcedTeaCaloriesLabelGrande.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        whiteIcedTeaCaloriesLabelVenti.centerXAnchor.constraint(equalTo: whiteIcedTeaLabel.centerXAnchor).isActive = true
        whiteIcedTeaCaloriesLabelVenti.topAnchor.constraint(equalTo: whiteIcedTeaCaloriesLabelGrande.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        whiteIcedTeaCaloriesLabelVenti.widthAnchor.constraint(equalTo: whiteIcedTeaLabel.widthAnchor).isActive = true
        whiteIcedTeaCaloriesLabelVenti.heightAnchor.constraint(equalTo: whiteIcedTeaLabel.heightAnchor, multiplier: 0.75).isActive = true
        whiteIcedTeaCaloriesLabelVenti.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        blackIcedTeaLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        blackIcedTeaLabel.topAnchor.constraint(equalTo: whiteIcedTeaCaloriesLabelVenti.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        blackIcedTeaLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.575).isActive = true
        blackIcedTeaLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        blackIcedTeaLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(blackIcedTeaCaloriesLabelTall)
        scrollView.addSubview(blackIcedTeaCaloriesLabelGrande)
        scrollView.addSubview(blackIcedTeaCaloriesLabelVenti)
        
        blackIcedTeaCaloriesLabelTall.centerXAnchor.constraint(equalTo: blackIcedTeaLabel.centerXAnchor).isActive = true
        blackIcedTeaCaloriesLabelTall.topAnchor.constraint(equalTo: blackIcedTeaLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        blackIcedTeaCaloriesLabelTall.widthAnchor.constraint(equalTo: blackIcedTeaLabel.widthAnchor).isActive = true
        blackIcedTeaCaloriesLabelTall.heightAnchor.constraint(equalTo: blackIcedTeaLabel.heightAnchor, multiplier: 0.75).isActive = true
        blackIcedTeaCaloriesLabelTall.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        blackIcedTeaCaloriesLabelGrande.centerXAnchor.constraint(equalTo: blackIcedTeaLabel.centerXAnchor).isActive = true
        blackIcedTeaCaloriesLabelGrande.topAnchor.constraint(equalTo: blackIcedTeaCaloriesLabelTall.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        blackIcedTeaCaloriesLabelGrande.widthAnchor.constraint(equalTo:   blackIcedTeaLabel.widthAnchor).isActive = true
        blackIcedTeaCaloriesLabelGrande.heightAnchor.constraint(equalTo: blackIcedTeaLabel.heightAnchor, multiplier: 0.75).isActive = true
        blackIcedTeaCaloriesLabelGrande.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        blackIcedTeaCaloriesLabelVenti.centerXAnchor.constraint(equalTo: blackIcedTeaLabel.centerXAnchor).isActive = true
        blackIcedTeaCaloriesLabelVenti.topAnchor.constraint(equalTo: blackIcedTeaCaloriesLabelGrande.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        blackIcedTeaCaloriesLabelVenti.widthAnchor.constraint(equalTo: blackIcedTeaLabel.widthAnchor).isActive = true
        blackIcedTeaCaloriesLabelVenti.heightAnchor.constraint(equalTo: blackIcedTeaLabel.heightAnchor, multiplier: 0.75).isActive = true
        blackIcedTeaCaloriesLabelVenti.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        passionTangoIcedTeaLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        passionTangoIcedTeaLabel.topAnchor.constraint(equalTo: blackIcedTeaCaloriesLabelVenti.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        passionTangoIcedTeaLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.575).isActive = true
        passionTangoIcedTeaLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        passionTangoIcedTeaLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(passionTangoIcedTeaCaloriesLabelTall)
        scrollView.addSubview(passionTangoIcedTeaCaloriesLabelGrande)
        scrollView.addSubview(passionTangoIcedTeaCaloriesLabelVenti)
        
        passionTangoIcedTeaCaloriesLabelTall.centerXAnchor.constraint(equalTo: passionTangoIcedTeaLabel.centerXAnchor).isActive = true
        passionTangoIcedTeaCaloriesLabelTall.topAnchor.constraint(equalTo: passionTangoIcedTeaLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        passionTangoIcedTeaCaloriesLabelTall.widthAnchor.constraint(equalTo: passionTangoIcedTeaLabel.widthAnchor).isActive = true
        passionTangoIcedTeaCaloriesLabelTall.heightAnchor.constraint(equalTo: passionTangoIcedTeaLabel.heightAnchor, multiplier: 0.75).isActive = true
        passionTangoIcedTeaCaloriesLabelTall.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        passionTangoIcedTeaCaloriesLabelGrande.centerXAnchor.constraint(equalTo: passionTangoIcedTeaLabel.centerXAnchor).isActive = true
        passionTangoIcedTeaCaloriesLabelGrande.topAnchor.constraint(equalTo: passionTangoIcedTeaCaloriesLabelTall.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        passionTangoIcedTeaCaloriesLabelGrande.widthAnchor.constraint(equalTo:   passionTangoIcedTeaLabel.widthAnchor).isActive = true
        passionTangoIcedTeaCaloriesLabelGrande.heightAnchor.constraint(equalTo: passionTangoIcedTeaLabel.heightAnchor, multiplier: 0.75).isActive = true
        passionTangoIcedTeaCaloriesLabelGrande.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        passionTangoIcedTeaCaloriesLabelVenti.centerXAnchor.constraint(equalTo: passionTangoIcedTeaLabel.centerXAnchor).isActive = true
        passionTangoIcedTeaCaloriesLabelVenti.topAnchor.constraint(equalTo: passionTangoIcedTeaCaloriesLabelGrande.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        passionTangoIcedTeaCaloriesLabelVenti.widthAnchor.constraint(equalTo: passionTangoIcedTeaLabel.widthAnchor).isActive = true
        passionTangoIcedTeaCaloriesLabelVenti.heightAnchor.constraint(equalTo: passionTangoIcedTeaLabel.heightAnchor, multiplier: 0.75).isActive = true
        passionTangoIcedTeaCaloriesLabelVenti.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        scrollView.addSubview(hotCoffeeCheckBox)
        scrollView.addSubview(icedCoffeeCheckBox)
        scrollView.addSubview(coldBrewCheckBox)
        scrollView.addSubview(icedAmericanoCheckBox)
        scrollView.addSubview(hotAmericanoCheckBox)
        scrollView.addSubview(greenIcedTeaCheckBox)
        scrollView.addSubview(whiteIcedTeaCheckBox)
        scrollView.addSubview(blackIcedTeaCheckBox)
        scrollView.addSubview(passionTangoIcedTeaCheckBox)
        
        hotCoffeeCheckBox.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -(view.frame.width * 0.175)).isActive = true
        hotCoffeeCheckBox.centerYAnchor.constraint(equalTo: hotCoffeeLabel.centerYAnchor).isActive = true
        hotCoffeeCheckBox.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        hotCoffeeCheckBox.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        
        icedCoffeeCheckBox.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -(view.frame.width * 0.175)).isActive = true
        icedCoffeeCheckBox.centerYAnchor.constraint(equalTo: icedCoffeeLabel.centerYAnchor).isActive = true
        icedCoffeeCheckBox.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        icedCoffeeCheckBox.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        
        coldBrewCheckBox.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -(view.frame.width * 0.175)).isActive = true
        coldBrewCheckBox.centerYAnchor.constraint(equalTo: coldBrewLabel.centerYAnchor).isActive = true
        coldBrewCheckBox.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        coldBrewCheckBox.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        
        icedAmericanoCheckBox.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -(view.frame.width * 0.175)).isActive = true
        icedAmericanoCheckBox.centerYAnchor.constraint(equalTo: americanoIcedLabel.centerYAnchor).isActive = true
        icedAmericanoCheckBox.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        icedAmericanoCheckBox.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        
        hotAmericanoCheckBox.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -(view.frame.width * 0.175)).isActive = true
        hotAmericanoCheckBox.centerYAnchor.constraint(equalTo: americanoHotLabel.centerYAnchor).isActive = true
        hotAmericanoCheckBox.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        hotAmericanoCheckBox.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        
        greenIcedTeaCheckBox.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -(view.frame.width * 0.175)).isActive = true
        greenIcedTeaCheckBox.centerYAnchor.constraint(equalTo: greenIcedTeaLabel.centerYAnchor).isActive = true
        greenIcedTeaCheckBox.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        greenIcedTeaCheckBox.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        
        whiteIcedTeaCheckBox.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -(view.frame.width * 0.175)).isActive = true
        whiteIcedTeaCheckBox.centerYAnchor.constraint(equalTo: whiteIcedTeaLabel.centerYAnchor).isActive = true
        whiteIcedTeaCheckBox.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        whiteIcedTeaCheckBox.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        
        blackIcedTeaCheckBox.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -(view.frame.width * 0.175)).isActive = true
        blackIcedTeaCheckBox.centerYAnchor.constraint(equalTo:  blackIcedTeaLabel.centerYAnchor).isActive = true
        blackIcedTeaCheckBox.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        blackIcedTeaCheckBox.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        
        passionTangoIcedTeaCheckBox.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -(view.frame.width * 0.175)).isActive = true
        passionTangoIcedTeaCheckBox.centerYAnchor.constraint(equalTo: passionTangoIcedTeaLabel.centerYAnchor).isActive = true
        passionTangoIcedTeaCheckBox.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
        passionTangoIcedTeaCheckBox.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1).isActive = true
    }
    
    @objc func handleHotCoffeeCheckBox(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
            hotAmericanoCheckBox.isSelected = false
            icedAmericanoCheckBox.isSelected = false
            icedCoffeeCheckBox.isSelected = false
            coldBrewCheckBox.isSelected = false
            greenIcedTeaCheckBox.isSelected = false
            whiteIcedTeaCheckBox.isSelected = false
            blackIcedTeaCheckBox.isSelected = false
            passionTangoIcedTeaCheckBox.isSelected = false
        }
    }
    
    @objc func handleIcedCoffeeCheckBox(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
            hotCoffeeCheckBox.isSelected = false
            hotAmericanoCheckBox.isSelected = false
            icedAmericanoCheckBox.isSelected = false
            coldBrewCheckBox.isSelected = false
            greenIcedTeaCheckBox.isSelected = false
            whiteIcedTeaCheckBox.isSelected = false
            blackIcedTeaCheckBox.isSelected = false
            passionTangoIcedTeaCheckBox.isSelected = false
        }
    }
    
    @objc func handleColdBrewCheckBox(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
            hotCoffeeCheckBox.isSelected = false
            hotAmericanoCheckBox.isSelected = false
            icedAmericanoCheckBox.isSelected = false
            icedCoffeeCheckBox.isSelected = false
            greenIcedTeaCheckBox.isSelected = false
            whiteIcedTeaCheckBox.isSelected = false
            blackIcedTeaCheckBox.isSelected = false
            passionTangoIcedTeaCheckBox.isSelected = false
        }
    }
    
    @objc func handleIcedAmericanoCheckBox(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
            hotCoffeeCheckBox.isSelected = false
            hotAmericanoCheckBox.isSelected = false
            icedCoffeeCheckBox.isSelected = false
            coldBrewCheckBox.isSelected = false
            greenIcedTeaCheckBox.isSelected = false
            whiteIcedTeaCheckBox.isSelected = false
            blackIcedTeaCheckBox.isSelected = false
            passionTangoIcedTeaCheckBox.isSelected = false
        }
    }
    
    @objc func handleHotAmericanoCheckBox(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
            hotCoffeeCheckBox.isSelected = false
            icedAmericanoCheckBox.isSelected = false
            icedCoffeeCheckBox.isSelected = false
            coldBrewCheckBox.isSelected = false
            greenIcedTeaCheckBox.isSelected = false
            whiteIcedTeaCheckBox.isSelected = false
            blackIcedTeaCheckBox.isSelected = false
            passionTangoIcedTeaCheckBox.isSelected = false
        }
    }
    
    @objc func handleGreenIcedTeaCheckBox(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
            hotCoffeeCheckBox.isSelected = false
            hotAmericanoCheckBox.isSelected = false
            icedAmericanoCheckBox.isSelected = false
            icedCoffeeCheckBox.isSelected = false
            coldBrewCheckBox.isSelected = false
            whiteIcedTeaCheckBox.isSelected = false
            blackIcedTeaCheckBox.isSelected = false
            passionTangoIcedTeaCheckBox.isSelected = false
        }
    }
    
    @objc func handleWhiteIcedTeaCheckBox(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
            hotCoffeeCheckBox.isSelected = false
            hotAmericanoCheckBox.isSelected = false
            icedAmericanoCheckBox.isSelected = false
            icedCoffeeCheckBox.isSelected = false
            coldBrewCheckBox.isSelected = false
            greenIcedTeaCheckBox.isSelected = false
            blackIcedTeaCheckBox.isSelected = false
            passionTangoIcedTeaCheckBox.isSelected = false
        }
    }
    
    @objc func handleBlackIcedTeaCheckBox(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
            hotCoffeeCheckBox.isSelected = false
            hotAmericanoCheckBox.isSelected = false
            icedAmericanoCheckBox.isSelected = false
            icedCoffeeCheckBox.isSelected = false
            coldBrewCheckBox.isSelected = false
            greenIcedTeaCheckBox.isSelected = false
            whiteIcedTeaCheckBox.isSelected = false
            passionTangoIcedTeaCheckBox.isSelected = false
        }
    }
    
    @objc func handlePassionTangoIcedTeaCheckBox(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
            hotCoffeeCheckBox.isSelected = false
            hotAmericanoCheckBox.isSelected = false
            icedAmericanoCheckBox.isSelected = false
            icedCoffeeCheckBox.isSelected = false
            coldBrewCheckBox.isSelected = false
            greenIcedTeaCheckBox.isSelected = false
            whiteIcedTeaCheckBox.isSelected = false
            blackIcedTeaCheckBox.isSelected = false
        }
    }
    
    @objc func handleBack() {
        coffeeBase = nil
        UserDefaults.standard.set(nil, forKey: "coffeeBase")
        noCoffeeBase = true
        UserDefaults.standard.set(true, forKey: "noCoffeeBase")
        UserDefaults.standard.synchronize()
        
        self.dismiss(animated: true) {}
    }
    
    @objc func handleNext() {
        if hotCoffeeCheckBox.isSelected == true {
            coffeeBase = "hotCoffee"
            UserDefaults.standard.set("hotCoffee", forKey: "coffeeBase")
            noCoffeeBase = false
            UserDefaults.standard.set(false, forKey: "noCoffeeBase")
            UserDefaults.standard.synchronize()
            self.present(CustomCoffeeMilks(), animated: true) {}
        } else if icedCoffeeCheckBox.isSelected == true {
            coffeeBase = "icedCoffee"
            UserDefaults.standard.set("icedCoffee", forKey: "coffeeBase")
            noCoffeeBase = false
            UserDefaults.standard.set(false, forKey: "noCoffeeBase")
            UserDefaults.standard.synchronize()
            self.present(CustomCoffeeMilks(), animated: true) {}
        } else if coldBrewCheckBox.isSelected == true {
            coffeeBase = "coldBrew"
            UserDefaults.standard.set("coldBrew", forKey: "coffeeBase")
            noCoffeeBase = false
            UserDefaults.standard.set(false, forKey: "noCoffeeBase")
            UserDefaults.standard.synchronize()
            self.present(CustomCoffeeMilks(), animated: true) {}
        } else if icedAmericanoCheckBox.isSelected == true {
            coffeeBase = "americanoIced"
            UserDefaults.standard.set("americanoIced", forKey: "coffeeBase")
            noCoffeeBase = false
            UserDefaults.standard.set(false, forKey: "noCoffeeBase")
            UserDefaults.standard.synchronize()
            self.present(CustomCoffeeMilks(), animated: true) {}
        } else if hotAmericanoCheckBox.isSelected == true {
            coffeeBase = "americanoHot"
            UserDefaults.standard.set("americanoHot", forKey: "coffeeBase")
            noCoffeeBase = false
            UserDefaults.standard.set(false, forKey: "noCoffeeBase")
            UserDefaults.standard.synchronize()
            self.present(CustomCoffeeMilks(), animated: true) {}
        } else if greenIcedTeaCheckBox.isSelected == true {
            coffeeBase = "greenIcedTea"
            UserDefaults.standard.set("greenIcedTea", forKey: "coffeeBase")
            noCoffeeBase = false
            UserDefaults.standard.set(false, forKey: "noCoffeeBase")
            UserDefaults.standard.synchronize()
            self.present(CustomCoffeeMilks(), animated: true) {}
        } else if whiteIcedTeaCheckBox.isSelected == true {
            coffeeBase = "whiteIcedTea"
            UserDefaults.standard.set("whiteIcedTea", forKey: "coffeeBase")
            noCoffeeBase = false
            UserDefaults.standard.set(false, forKey: "noCoffeeBase")
            UserDefaults.standard.synchronize()
            self.present(CustomCoffeeMilks(), animated: true) {}
        } else if blackIcedTeaCheckBox.isSelected == true {
            coffeeBase = "blackIcedTea"
            UserDefaults.standard.set("blackIcedTea", forKey: "coffeeBase")
            noCoffeeBase = false
            UserDefaults.standard.set(false, forKey: "noCoffeeBase")
            UserDefaults.standard.synchronize()
            self.present(CustomCoffeeMilks(), animated: true) {}
        } else if passionTangoIcedTeaCheckBox.isSelected == true {
            coffeeBase = "passionTangoTea"
            UserDefaults.standard.set("passionTangoTea", forKey: "coffeeBase")
            noCoffeeBase = false
            UserDefaults.standard.set(false, forKey: "noCoffeeBase")
            UserDefaults.standard.synchronize()
            self.present(CustomCoffeeMilks(), animated: true) {}
        } else {
            let alert = UIAlertController(title: "Please Select a Coffee Base", message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                switch action.style{
                case .default:
                    print("default")
                    
                case .cancel:
                    print("cancel")
                    
                case .destructive:
                    print("destructive")
                    
                    
                }}))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}
