//
//  HotSaltedCarramelMocha.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 2/14/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class HotSaltedCaramelMocha: UIViewController {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Salted Caramel Mocha"
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
    
    let sizeLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Grande"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let caloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Calories: 100"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let proteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Protein: 1g"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let carbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Carbs: 4g"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let fatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Fats: 3g"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let sugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sugar: 12g"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let askForTitle: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Ask For:"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let askFor1: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1️⃣ Tall Blonde Americano "
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .left
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let askFor2: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "2️⃣ ONE pump of mocha"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .left
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let askFor3: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "3️⃣  ONE pumps of toffee nut"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .left
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let askFor4: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "4️⃣ Half and half"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .left
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let askFor5: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5️⃣ In a Grande cup"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .left
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
    
    func setupView() {
        view.backgroundColor = UIColor(red: 255/255, green: 218/255, blue: 185/255, alpha: 1)
        
        scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height * 1.25)
        
        view.addSubview(titleLabel)
        view.addSubview(backButton)
        view.addSubview(scrollView)
        
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.height * 0.05).isActive = true
        titleLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        titleLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.075)
        
        backButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45).isActive = true
        backButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: view.frame.width * 0.025).isActive = true
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -(view.frame.width * 0.05)).isActive = true
        backButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.075)
        
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        scrollView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7).isActive = true
    }
    
    func setupScrollView() {
        scrollView.addSubview(sizeLabel)
        scrollView.addSubview(caloriesLabel)
        scrollView.addSubview(proteinLabel)
        scrollView.addSubview(carbsLabel)
        scrollView.addSubview(fatsLabel)
        scrollView.addSubview(sugarLabel)
        scrollView.addSubview(askForTitle)
        scrollView.addSubview(askFor1)
        scrollView.addSubview(askFor2)
        scrollView.addSubview(askFor3)
        scrollView.addSubview(askFor4)
        scrollView.addSubview(askFor5)
        
        sizeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        sizeLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: view.frame.height * 0.05).isActive = true
        sizeLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.575).isActive = true
        sizeLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        sizeLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        caloriesLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        caloriesLabel.topAnchor.constraint(equalTo: sizeLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        caloriesLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        caloriesLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        caloriesLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        proteinLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        proteinLabel.topAnchor.constraint(equalTo: caloriesLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        proteinLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        proteinLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        proteinLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        carbsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        carbsLabel.topAnchor.constraint(equalTo: proteinLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        carbsLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        carbsLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        carbsLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        fatsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        fatsLabel.topAnchor.constraint(equalTo: carbsLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        fatsLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        fatsLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        fatsLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        sugarLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        sugarLabel.topAnchor.constraint(equalTo: fatsLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        sugarLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        sugarLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        sugarLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        askForTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        askForTitle.topAnchor.constraint(equalTo: sugarLabel.bottomAnchor, constant: view.frame.height * 0.075).isActive = true
        askForTitle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        askForTitle.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        askForTitle.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        askFor1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        askFor1.topAnchor.constraint(equalTo: askForTitle.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        askFor1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        askFor1.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        askFor1.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        askFor2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        askFor2.topAnchor.constraint(equalTo: askFor1.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        askFor2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        askFor2.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        askFor2.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        askFor3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        askFor3.topAnchor.constraint(equalTo: askFor2.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        askFor3.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        askFor3.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        askFor3.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        askFor4.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        askFor4.topAnchor.constraint(equalTo: askFor3.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        askFor4.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        askFor4.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        askFor4.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        askFor5.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        askFor5.topAnchor.constraint(equalTo: askFor4.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        askFor5.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        askFor5.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        askFor5.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
    }
    
    @objc func handleBack() {
        self.dismiss(animated: true, completion: {})
    }
    
}
