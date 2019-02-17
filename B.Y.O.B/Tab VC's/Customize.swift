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
    
    // 0-1-2-3-4 pumps is how this will selected
    var vanillaSyrupPumps = UserDefaults.standard.integer(forKey: "vanillaSyrupPumps")
    var caramelSyrupPumps = UserDefaults.standard.integer(forKey: "caramelSyrupPumps")
    var hazelnutSyrupPumps = UserDefaults.standard.integer(forKey: "hazelnutSyrupPumps")
    var toffeeNutSyrupPumps = UserDefaults.standard.integer(forKey: "toffeeNutSyrupPumps")
    var cinnamonDolceSyrupPumps = UserDefaults.standard.integer(forKey: "cinnamonDolceSyrupPumps")
    var peppermintSyrupPumps = UserDefaults.standard.integer(forKey: "peppermintSyrupPumps")
    var raspberrySyrupPumps = UserDefaults.standard.integer(forKey: "raspberrySyrupPumps")
    var classicSyrupPumps = UserDefaults.standard.integer(forKey: "classicSyrupPumps")
    var cascaraSyrupPumps = UserDefaults.standard.integer(forKey: "cascaraSyrupPumps")
    var whiteMochaSyrupPumps = UserDefaults.standard.integer(forKey: "whiteMochaSyrupPumps")
    var mochaSyrupPumps = UserDefaults.standard.integer(forKey: "mochaSyrupPumps")
    var sugarFreeVanillaSyrupPumps = UserDefaults.standard.integer(forKey: "sugarFreeVanillaSyrupPumps")
    var sugarFreeCinnamonDolceSyrupPumps = UserDefaults.standard.integer(forKey: "sugarFreeCinnamonDolceSyrupPumps")
    var pumpkinSpiceSyrupPumps = UserDefaults.standard.integer(forKey: "pumpkinSpiceSyrupPumps")
    var gingerbreadSyrupPumps = UserDefaults.standard.integer(forKey: "gingerbreadSyrupPumps")
    var caramelBruleeSyrupPumps = UserDefaults.standard.integer(forKey: "caramelBruleeSyrupPumps")
    var toastedWhiteMochaSyrupPumps = UserDefaults.standard.integer(forKey: "toastedWhiteMochaSyrupPumps")
    
    // 0-1-2-3 none-light-normal-extra is how this will be served
    var lightCaramelDrizzleServing = UserDefaults.standard.integer(forKey: "lightCaramelDrizzleServing")
    var lightMochaDrizzleServing = UserDefaults.standard.integer(forKey: "lightMochaDrizzleServing")
    var cinnamonPowderServing = UserDefaults.standard.integer(forKey: "cinnamonPowderServing")
    var sugarFreeColdFoamServing = UserDefaults.standard.integer(forKey: "sugarFreeColdFoamServing")
    
    var wholeMilkServing = UserDefaults.standard.integer(forKey: "wholeMilkServing")
    var twoPercentMilkServing = UserDefaults.standard.integer(forKey: "twoPercentMilkServing")
    var onePercentMilkServing = UserDefaults.standard.integer(forKey: "onePercentMilkServing")
    var nonFatSkimMilkServing = UserDefaults.standard.integer(forKey: "nonFatSkimMilkServing")
    var halfAndHalfServing = UserDefaults.standard.integer(forKey: "halfAndHalfServing")
    var heavyCreamServing = UserDefaults.standard.integer(forKey: "heavyCreamServing")
    var coconutMilkServing = UserDefaults.standard.integer(forKey: "coconutMilkServing")
    var  almondMilkServing = UserDefaults.standard.integer(forKey: "almondMilkServing")
    var soyMilkServing = UserDefaults.standard.integer(forKey: "soyMilkServing")
    
    // base drinks
    var coffeeBase = UserDefaults.standard.string(forKey: "coffeeBase")
    
    //variables to check for the blank menu
    var noSyrups = UserDefaults.standard.bool(forKey: "noSyrups")
    var noExtras = UserDefaults.standard.bool(forKey: "noExtras")
    var noMilks = UserDefaults.standard.bool(forKey: "noMilks")
    var noCoffeeBase = UserDefaults.standard.bool(forKey: "noCoffeeBase")
    
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
        
        determineCoffeeBase()
        determineMilks()
        determineExtras()
        determineSyrups()
        
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
        
        if noCoffeeBase == true && noSyrups == true && noMilks == true && noExtras == true {
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

    @objc func handleBeginDrink() {
        self.present(CustomCoffeeBase(), animated: true) {
            
        }
    }
    
    @objc func handleEditDrink() {
        
    }
    
    @objc func handleReset() {
        noCoffeeBase = true
        UserDefaults.standard.set(true, forKey: "noCoffeeBase")
        noMilks = true
        UserDefaults.standard.set(true, forKey: "noMilks")
        noExtras = true
        UserDefaults.standard.set(true, forKey: "noExtras")
        noSyrups = true
        UserDefaults.standard.set(true, forKey: "noSyrups")
        
        coffeeBase = nil
        UserDefaults.standard.setNilValueForKey("coffeeBase")
        wholeMilkServing = 0
        UserDefaults.standard.set(0, forKey: "wholeMilkServing")
        twoPercentMilkServing = 0
        UserDefaults.standard.set(0, forKey: "twoPercentMilkServing")
        onePercentMilkServing = 0
        UserDefaults.standard.set(0, forKey: "onePercentMilkServing")
        nonFatSkimMilkServing = 0
        UserDefaults.standard.set(0, forKey: "nonFatSkimMilkServing")
        halfAndHalfServing = 0
        UserDefaults.standard.set(0, forKey: "halfAndHalfServing")
        heavyCreamServing = 0
        UserDefaults.standard.set(0, forKey: "heavyCreamServing")
        coconutMilkServing = 0
        UserDefaults.standard.set(0, forKey: "cocnutMilkServing")
        almondMilkServing = 0
        UserDefaults.standard.set(0, forKey: "almondMilkServing")
        soyMilkServing = 0
        UserDefaults.standard.set(0, forKey: "soyMilkServing")
        vanillaSyrupPumps = 0
        UserDefaults.standard.set(0, forKey: "vanillaSyrupPumps")
        caramelSyrupPumps = 0
        UserDefaults.standard.set(0, forKey: "caramelSyrupPumps")
        hazelnutSyrupPumps = 0
        UserDefaults.standard.set(0, forKey: "hazelnutSyrupPumps")
        toffeeNutSyrupPumps = 0
        UserDefaults.standard.set(0, forKey: "toffeeNutSyrupPumps")
        cinnamonDolceSyrupPumps = 0
        UserDefaults.standard.set(0, forKey: "cinnamonDolceSyrupPumps")
        peppermintSyrupPumps = 0
        UserDefaults.standard.set(0, forKey: "peppermintSyrupPumps")
        raspberrySyrupPumps = 0
        UserDefaults.standard.set(0, forKey: "rasberrySyrupPumps")
        classicSyrupPumps = 0
        UserDefaults.standard.set(0, forKey: "classicSyrupPumps")
        whiteMochaSyrupPumps = 0
        UserDefaults.standard.set(0, forKey: "whiteMochaSyrupPumps")
        mochaSyrupPumps = 0
        UserDefaults.standard.set(0, forKey: "mochaSyrupPumps")
        sugarFreeVanillaSyrupPumps = 0
        UserDefaults.standard.set(0, forKey: "sugarFreeVanillaSyrupPumps")
        sugarFreeCinnamonDolceSyrupPumps = 0
        UserDefaults.standard.set(0, forKey: "sugarFreeCinnamonDolceSyrupPumps")
        pumpkinSpiceSyrupPumps = 0
        UserDefaults.standard.set(0, forKey: "pumpkinSpiceSyrupPumps")
        gingerbreadSyrupPumps = 0
        UserDefaults.standard.set(0, forKey: "gingerbreadSyrupPumps")
        caramelBruleeSyrupPumps = 0
        UserDefaults.standard.set(0, forKey: "caramelDrileeSyrupPumps")
        toastedWhiteMochaSyrupPumps = 0
        UserDefaults.standard.set(0, forKey: "toastedWhiteMochaSyrupPumps")
        lightCaramelDrizzleServing = 0
        UserDefaults.standard.set(0, forKey: "lightCaramelDrizzleServing")
        lightMochaDrizzleServing = 0
        UserDefaults.standard.set(0, forKey: "lightMochaDrizzleServing")
        cinnamonPowderServing = 0
        UserDefaults.standard.set(0, forKey: "cinnamonPowderServing")
        sugarFreeColdFoamServing = 0
        UserDefaults.standard.set(0, forKey: "sugarFreeColdFoamServing")
        
        UserDefaults.standard.synchronize()
        
        // remove anything that need to be and then add in the begin drink button
    }
    
    func determineCoffeeBase() {
        if coffeeBase == "hotCoffee" {
            
        } else if coffeeBase == "americanoIced" {
            
        } else if coffeeBase == "americanoHot" {
            
        } else if coffeeBase == "icedCoffee" {
            
        } else if coffeeBase == "coldBrew" {
            
        } else if coffeeBase == "greenIcedTea" {
            
        } else if coffeeBase == "whiteIcedTea" {
            
        } else if coffeeBase == "blackIcedTea" {
            
        } else if coffeeBase == "passionTangoTea" {
            
        } else if coffeeBase == nil {
            noCoffeeBase = true
            UserDefaults.standard.set(true, forKey: "noCoffeeBase")
            UserDefaults.standard.synchronize()
        }
    }
    
    func determineMilks() {
        if wholeMilkServing != 0 {
            
        } else if twoPercentMilkServing != 0 {
            
        } else if onePercentMilkServing != 0 {
            
        } else if nonFatSkimMilkServing != 0 {
            
        } else if halfAndHalfServing != 0 {
            
        } else if heavyCreamServing != 0 {
            
        } else if coconutMilkServing != 0 {
            
        } else if almondMilkServing != 0 {
            
        } else if soyMilkServing != 0 {
            
        } else {
            noMilks = true
            UserDefaults.standard.set(true, forKey: "noMilks")
            UserDefaults.standard.synchronize()
        }
    }
    
    func determineSyrups() {
        if vanillaSyrupPumps != 0 {
            
        } else if caramelSyrupPumps != 0 {
            
        } else if hazelnutSyrupPumps != 0 {
            
        } else if toffeeNutSyrupPumps != 0 {
            
        } else if cinnamonDolceSyrupPumps != 0 {
            
        } else if peppermintSyrupPumps != 0 {
            
        } else if raspberrySyrupPumps != 0 {
            
        } else if classicSyrupPumps != 0 {
            
        } else if cascaraSyrupPumps != 0 {
            
        } else if whiteMochaSyrupPumps != 0 {
            
        } else if mochaSyrupPumps != 0 {
            
        } else if sugarFreeVanillaSyrupPumps != 0 {
            
        } else if sugarFreeCinnamonDolceSyrupPumps != 0 {
            
        } else if pumpkinSpiceSyrupPumps != 0 {
            
        } else if gingerbreadSyrupPumps != 0 {
            
        } else if caramelSyrupPumps != 0 {
            
        } else if caramelBruleeSyrupPumps != 0 {
            
        } else if toastedWhiteMochaSyrupPumps != 0 {
            
        } else {
            noSyrups = true
            UserDefaults.standard.set(true, forKey: "noSyrups")
            UserDefaults.standard.synchronize()
        }
    }
    
    func determineExtras() {
        if lightCaramelDrizzleServing != 0 {
            
        } else if lightMochaDrizzleServing != 0 {
            
        } else if cinnamonPowderServing != 0 {
            
        } else if sugarFreeColdFoamServing != 0 {
            
        } else {
            noExtras = true
            UserDefaults.standard.set(true, forKey: "noExtras")
            UserDefaults.standard.synchronize()
        }
    }
    
}
