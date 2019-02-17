//
//  IcedDrinks.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 2/13/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class IcedDrinksMenu: UIViewController {
    
    let icedCoffeeTitle: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Iced Coffee"
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
    
    let frenchVanillaColdBrewButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("French Vanilla Cold Brew", for: UIControl.State.normal)
        button.addTarget(self, action: #selector(handleFrenchVanillaColdBrew), for: .touchUpInside)
        button.setTitleColor(UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1), for: UIControl.State.normal)
        button.titleLabel?.lineBreakMode = .byCharWrapping
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = .center
        
        return button
    }()
    
    let blackAndWhiteMochaButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Black and White Mocha", for: UIControl.State.normal)
        button.addTarget(self, action: #selector(handleBlackAndWhiteMocha), for: .touchUpInside)
        button.setTitleColor(UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1), for: UIControl.State.normal)
        button.titleLabel?.lineBreakMode = .byCharWrapping
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = .center
        
        return button
    }()
    
    let whiteMochaButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("White Mocha", for: UIControl.State.normal)
        button.addTarget(self, action: #selector(handleWhiteMocha), for: .touchUpInside)
        button.setTitleColor(UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1), for: UIControl.State.normal)
        button.titleLabel?.lineBreakMode = .byCharWrapping
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = .center
        
        return button
    }()
    
    let icedCaramelMacchiatoButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Iced Caramel Macchiato", for: UIControl.State.normal)
        button.addTarget(self, action: #selector(handleIcedCaramelMacchiato), for: .touchUpInside)
        button.setTitleColor(UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1), for: UIControl.State.normal)
        button.titleLabel?.lineBreakMode = .byCharWrapping
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = .center
        
        return button
    }()
    
    let doubleShotOnIceButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Double Shot On Ice", for: UIControl.State.normal)
        button.addTarget(self, action: #selector(handleDoubleShotOnIce), for: .touchUpInside)
        button.setTitleColor(UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1), for: UIControl.State.normal)
        button.titleLabel?.lineBreakMode = .byCharWrapping
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = .center
        
        return button
    }()
    
    let icedPeppermintMochaButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Iced Peppermint Mocha", for: UIControl.State.normal)
        button.addTarget(self, action: #selector(handleIcedPeppermintMocha), for: .touchUpInside)
        button.setTitleColor(UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1), for: UIControl.State.normal)
        button.titleLabel?.lineBreakMode = .byCharWrapping
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = .center
        
        return button
    }()
    
    let icedCaramelCocoaButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Iced Caramel Cocoa", for: UIControl.State.normal)
        button.addTarget(self, action: #selector(handleIcedCaramelCocoa), for: .touchUpInside)
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
        
        scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height * 1.05)
        
        view.addSubview(icedCoffeeTitle)
        view.addSubview(backButton)
        view.addSubview(scrollView)
        
        icedCoffeeTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        icedCoffeeTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.height * 0.05).isActive = true
        icedCoffeeTitle.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        icedCoffeeTitle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        icedCoffeeTitle.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.075)
        
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
        scrollView.addSubview(frenchVanillaColdBrewButton)
        scrollView.addSubview(blackAndWhiteMochaButton)
        scrollView.addSubview(whiteMochaButton)
        scrollView.addSubview(icedCaramelMacchiatoButton)
        scrollView.addSubview(doubleShotOnIceButton)
        scrollView.addSubview(icedPeppermintMochaButton)
        scrollView.addSubview(icedCaramelCocoaButton)
        
        frenchVanillaColdBrewButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        frenchVanillaColdBrewButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: view.frame.height * 0.05).isActive = true
        frenchVanillaColdBrewButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        frenchVanillaColdBrewButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        frenchVanillaColdBrewButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        blackAndWhiteMochaButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        blackAndWhiteMochaButton.topAnchor.constraint(equalTo: frenchVanillaColdBrewButton.bottomAnchor, constant: view.frame.height * 0.1).isActive = true
        blackAndWhiteMochaButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        blackAndWhiteMochaButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        blackAndWhiteMochaButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        whiteMochaButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        whiteMochaButton.topAnchor.constraint(equalTo: blackAndWhiteMochaButton.bottomAnchor, constant: view.frame.height * 0.1).isActive = true
        whiteMochaButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        whiteMochaButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        whiteMochaButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        icedCaramelMacchiatoButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        icedCaramelMacchiatoButton.topAnchor.constraint(equalTo: whiteMochaButton.bottomAnchor, constant: view.frame.height * 0.1).isActive = true
        icedCaramelMacchiatoButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        icedCaramelMacchiatoButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        icedCaramelMacchiatoButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        doubleShotOnIceButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        doubleShotOnIceButton.topAnchor.constraint(equalTo: icedCaramelMacchiatoButton.bottomAnchor, constant: view.frame.height * 0.1).isActive = true
        doubleShotOnIceButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        doubleShotOnIceButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        doubleShotOnIceButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        icedPeppermintMochaButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        icedPeppermintMochaButton.topAnchor.constraint(equalTo: doubleShotOnIceButton.bottomAnchor, constant: view.frame.height * 0.1).isActive = true
        icedPeppermintMochaButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        icedPeppermintMochaButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        icedPeppermintMochaButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        icedCaramelCocoaButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        icedCaramelCocoaButton.topAnchor.constraint(equalTo: icedPeppermintMochaButton.bottomAnchor, constant: view.frame.height * 0.1).isActive = true
        icedCaramelCocoaButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        icedCaramelCocoaButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        icedCaramelCocoaButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
    }
    
    @objc func handleBack() {
        self.dismiss(animated: true, completion: {})
    }
    
    @objc func handleFrenchVanillaColdBrew() {
        self.present(FrenchVanillaColdBrew(), animated: true, completion: {})
    }
    
    @objc func handleBlackAndWhiteMocha() {
        self.present(BlackAndWhiteMocha(), animated: true, completion:{})
    }
    
    @objc func handleWhiteMocha() {
        self.present(WhiteMocha(), animated: true, completion: {})
    }
    
    @objc func handleIcedCaramelMacchiato() {
        self.present(IcedCaramelMacchiato(), animated: true, completion: {})
    }
    
    @objc func handleDoubleShotOnIce() {
        self.present(DoubleShotOnIce(), animated: true, completion: {})
    }
    
    @objc func handleIcedPeppermintMocha() {
        self.present(IcedPeppermintMocha(), animated: true, completion: {})
    }
    
    @objc func handleIcedCaramelCocoa() {
        self.present(IcedCaramelCocoa(), animated: true, completion: {})
    }
    
}
