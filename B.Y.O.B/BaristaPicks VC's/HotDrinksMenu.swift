//
//  HotDrinksMenu.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 2/13/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class HotDrinksMenu: UIViewController {
    
    let hotCoffeeTitle: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hot Coffee"
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
    
    let mochaButton: UIButton = {
       let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Mocha", for: UIControl.State.normal)
        button.addTarget(self, action: #selector(handleMocha), for: .touchUpInside)
        button.setTitleColor(UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1), for: UIControl.State.normal)
        button.titleLabel?.lineBreakMode = .byCharWrapping
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = .center
        
        return button
    }()
    
    let saltedCaramelMochaButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Salted Caramel Mocha", for: UIControl.State.normal)
        button.addTarget(self, action: #selector(handleSaltedCaramelMocha), for: .touchUpInside)
        button.setTitleColor(UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1), for: UIControl.State.normal)
        button.titleLabel?.lineBreakMode = .byCharWrapping
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = .center
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupScrollView()
    }
    
    private func setupView() {
        view.backgroundColor = UIColor(red: 255/255, green: 218/255, blue: 185/255, alpha: 1)
        
        //scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height * 2.65)
        
        view.addSubview(hotCoffeeTitle)
        view.addSubview(backButton)
        view.addSubview(scrollView)
        
        hotCoffeeTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        hotCoffeeTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.height * 0.05).isActive = true
        hotCoffeeTitle.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        hotCoffeeTitle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        hotCoffeeTitle.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.075)
        
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
    
    private func setupScrollView() {
        scrollView.addSubview(mochaButton)
        scrollView.addSubview(saltedCaramelMochaButton)
        
        mochaButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        mochaButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: view.frame.height * 0.05).isActive = true
        mochaButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.575).isActive = true
        mochaButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        mochaButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        saltedCaramelMochaButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        saltedCaramelMochaButton.topAnchor.constraint(equalTo: mochaButton.bottomAnchor, constant: view.frame.height * 0.1).isActive = true
        saltedCaramelMochaButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        saltedCaramelMochaButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        saltedCaramelMochaButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
    }
    
    @objc func handleBack() {
        self.dismiss(animated: true, completion: {})
    }
    
    @objc func handleMocha() {
        self.present(HotMocha(), animated: true, completion: {})
    }
    
    @objc func handleSaltedCaramelMocha() {
        self.present(HotSaltedCaramelMocha(), animated: true, completion: {})
    }
    
}
