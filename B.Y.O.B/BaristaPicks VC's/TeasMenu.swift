//
//  TeasMenu.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 2/13/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class TeasMenu: UIViewController {
    
    let teasTitle: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Teas"
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
    
   let greenTeaLatteButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Green Tea Latte", for: UIControl.State.normal)
        button.addTarget(self, action: #selector(handleGreenTeaLatte), for: .touchUpInside)
        button.setTitleColor(UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1), for: UIControl.State.normal)
        button.titleLabel?.lineBreakMode = .byCharWrapping
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = .center
        
        return button
    }()
    
    let pinkDrinkButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Pink Drink", for: UIControl.State.normal)
        button.addTarget(self, action: #selector(handlePinkDrink), for: .touchUpInside)
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
        
        scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height * 2.65)
        
        view.addSubview(teasTitle)
        view.addSubview(backButton)
        view.addSubview(scrollView)
        
        teasTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        teasTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.height * 0.05).isActive = true
        teasTitle.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        teasTitle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        teasTitle.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.075)
        
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
        scrollView.addSubview(greenTeaLatteButton)
        scrollView.addSubview(pinkDrinkButton)
        
        greenTeaLatteButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        greenTeaLatteButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: view.frame.height * 0.05).isActive = true
        greenTeaLatteButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.575).isActive = true
        greenTeaLatteButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        greenTeaLatteButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        pinkDrinkButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        pinkDrinkButton.topAnchor.constraint(equalTo: greenTeaLatteButton.bottomAnchor, constant: view.frame.height * 0.1).isActive = true
        pinkDrinkButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        pinkDrinkButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        pinkDrinkButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
    }
    
    @objc func handleBack() {
        self.dismiss(animated: true, completion: {})
    }
    
    @objc func handleGreenTeaLatte() {
        self.present(GreenTeaLatte(), animated: true, completion: {})
    }
    
    @objc func handlePinkDrink() {
        self.present(PinkDrink(), animated: true, completion: {})
    }
    
}
