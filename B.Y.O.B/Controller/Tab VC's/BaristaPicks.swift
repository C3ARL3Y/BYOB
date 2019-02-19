//
//  BaristaPicks.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 2/4/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class BaristaPicks: UIViewController {
    
    let logo: UIImageView = {
        let imageView = UIImageView()
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "BYOBLogo")
        
        return imageView
    }()
    
    let hotDrinksButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "HotDrinksLabel"), for: UIControl.State.normal)
        button.addTarget(self, action: #selector(handleHotCoffee), for: .touchUpInside)
        
        return button
    }()
    
    let icedDrinksButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "IcedDrinksLabel"), for: UIControl.State.normal)
        button.addTarget(self, action: #selector(handleIcedCoffee), for: .touchUpInside)
        
        return button
    }()
    
    let teasButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "TeasLabel"), for: UIControl.State.normal)
        button.addTarget(self, action: #selector(handleTeas), for: .touchUpInside)
        
        return button
    }()
    
    let baristaPicksLabel: UIImageView = {
        let imageView = UIImageView()
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "BaristaPicksLabel")
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = UIColor(red: 255/255, green: 218/255, blue: 185/255, alpha: 1)
        navigationItem.title = "Barista Picks"
        
        view.addSubview(hotDrinksButton)
        view.addSubview(icedDrinksButton)
        view.addSubview(teasButton)
        view.addSubview(logo)
        view.addSubview(baristaPicksLabel)
        
        hotDrinksButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        hotDrinksButton.bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: -(view.frame.height * 0.025)).isActive = true
        hotDrinksButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.65).isActive = true
        hotDrinksButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.15).isActive = true

        icedDrinksButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        icedDrinksButton.topAnchor.constraint(equalTo: view.centerYAnchor, constant: (view.frame.height * 0.025)).isActive = true
        icedDrinksButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.65).isActive = true
        icedDrinksButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.15).isActive = true
        
        teasButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        teasButton.topAnchor.constraint(equalTo: icedDrinksButton.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        teasButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.65).isActive = true
        teasButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.15).isActive = true
        
        logo.leftAnchor.constraint(equalTo: view.leftAnchor, constant: (view.frame.width * 0.05)).isActive = true
        logo.bottomAnchor.constraint(equalTo: hotDrinksButton.topAnchor, constant: -(view.frame.height * 0.025)).isActive = true
        logo.widthAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.15).isActive = true
        logo.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.15).isActive = true
        
        baristaPicksLabel.leftAnchor.constraint(equalTo: logo.rightAnchor, constant: view.frame.width * 0.05).isActive = true
        baristaPicksLabel.centerYAnchor.constraint(equalTo: logo.centerYAnchor).isActive = true
        baristaPicksLabel.heightAnchor.constraint(equalTo: logo.heightAnchor, multiplier: 1).isActive = true
        baristaPicksLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.55).isActive = true
    }
    
    @objc func handleHotCoffee() {
        present(ViewBaristaPicsViewController(), animated: true, completion: nil)
    }
    
    @objc func handleIcedCoffee() {
        present(ViewBaristaPicsViewController(), animated: true, completion: nil)
    }
    
    @objc func handleTeas() {
        present(ViewBaristaPicsViewController(), animated: true, completion: nil)
    }
    
}

/*extension: UIColor{
    static let NavColor = UIColor(
}*/
