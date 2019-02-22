//
//  CustomSyrups.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 2/10/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class CustomCoffeeSyrups: UIViewController {
    
    var noSyrups = UserDefaults.standard.bool(forKey: "noSyrups")
    
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
    
    let syrupsTitle: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Syrups"
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
    
    let vanillaLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Vanilla"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let caramelLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Caramel"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let hazelnutLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hazelnut"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let toffeeNutLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Toffee Nut"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let cinnamonDolceLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Cinnamon    Dolce"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let peppermintLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Peppermint"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let raspberryLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Raspberry"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let classicLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Classic"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let cascaraLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Cascara"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let whiteMochaLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "White Mocha"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let mochaLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Mocha"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let sugarFreeVanillaLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sugar Free    Vanilla"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let sugarFreeCinnamonDolceLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sugar Free    Cinnamon    Dolce"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let pumpkinSpiceLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Pumpkin       Spice"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let gingerbreadLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Gingerbread"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let caramelBruleeLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Caramel        Brulee"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let toastedWhiteMochaLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Toasted        White Mocha"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let servingSizeLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Nutrients = Per Pump"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let vanillaCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "24 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let vanillaProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let vanillaCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5.5g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let vanillaFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let vanillaSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let caramelCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "24 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let caramelProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let caramelCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5.5g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let caramelFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let caramelSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let hazelnutCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "24 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let hazelnutProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let hazelnutCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5.5g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let hazelnutFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let hazelnutSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let toffeeNutCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "24 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let toffeeNutProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let toffeeNutCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5.5g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let toffeeNutFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let toffeeNutSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let cinnamonDolceCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "24 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let cinnamonDolceProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let cinnamonDolceCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5.5g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let cinnamonDolceFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let cinnamonDolceSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let peppermintCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "24 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let peppermintProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let peppermintCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5.5g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let peppermintFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let peppermintSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let raspberryCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "24 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let raspberryProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let raspberryCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5.5g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let raspberryFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let raspberrySugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let classicCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "24 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let classicProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let classicCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5.5g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let classicFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let classicSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let cascaraCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "24 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let cascaraProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let cascaraCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5.5g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let cascaraFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let cascaraSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let whiteMochaCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "70 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let whiteMochaProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1.5g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let whiteMochaCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "11g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let whiteMochaFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1.5g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let whiteMochaSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "11g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let mochaCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "30 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let mochaProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ".5g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let mochaCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "6.5g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let mochaFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ".5g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let mochaSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "6g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let sugarFreeVanillaCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let sugarFreeVanillaProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let sugarFreeVanillaCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ".25g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let sugarFreeVanillaFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let sugarFreeVanillaSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let sugarFreeCinnamonDolceCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let sugarFreeCinnamonDolceProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let sugarFreeCinnamonDolceCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let sugarFreeCinnamonDolceFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let sugarFreeCinnamonDolceSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let pumpkinSpiceCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let pumpkinSpiceProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let pumpkinSpiceCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let pumpkinSpiceFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let pumpkinSpiceSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let gingerbreadCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "24 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let gingerbreadProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let gingerbreadCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5.5g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let gingerbreadFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let gingerbreadSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let caramelBruleeCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let caramelBruleeProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let caramelBruleeCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let caramelBruleeFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let caramelBruleeSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let toastedWhiteMochaCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "70 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let toastedWhiteMochaProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1.5g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let toastedWhiteMochaCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "11g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let toastedWhiteMochaFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1.5g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let toastedWhiteMochaSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "11g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let vanillaServingLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.white
        label.layer.cornerRadius = 5
        label.layer.masksToBounds = true
        label.layer.borderColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1).cgColor
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.layer.borderWidth = 1
        label.textAlignment = .center
        
        return label
    }()
    
    let caramelServingLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.white
        label.layer.cornerRadius = 5
        label.layer.masksToBounds = true
        label.layer.borderColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1).cgColor
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.layer.borderWidth = 1
        label.textAlignment = .center
        
        return label
    }()
    
    let hazelnutServingLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.white
        label.layer.cornerRadius = 5
        label.layer.masksToBounds = true
        label.layer.borderColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1).cgColor
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.layer.borderWidth = 1
        label.textAlignment = .center
        
        return label
    }()
    
    let toffeeNutServingLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.white
        label.layer.cornerRadius = 5
        label.layer.masksToBounds = true
        label.layer.borderColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1).cgColor
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.layer.borderWidth = 1
        label.textAlignment = .center
        
        return label
    }()
    
    let cinnamonDolceServingLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.white
        label.layer.cornerRadius = 5
        label.layer.masksToBounds = true
        label.layer.borderColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1).cgColor
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.layer.borderWidth = 1
        label.textAlignment = .center
        
        return label
    }()
    
    let peppermintServingLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.white
        label.layer.cornerRadius = 5
        label.layer.masksToBounds = true
        label.layer.borderColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1).cgColor
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.layer.borderWidth = 1
        label.textAlignment = .center
        
        return label
    }()
    
    let raspberryServingLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.white
        label.layer.cornerRadius = 5
        label.layer.masksToBounds = true
        label.layer.borderColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1).cgColor
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.layer.borderWidth = 1
        label.textAlignment = .center
        
        return label
    }()
    
    let classicServingLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.white
        label.layer.cornerRadius = 5
        label.layer.masksToBounds = true
        label.layer.borderColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1).cgColor
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.layer.borderWidth = 1
        label.textAlignment = .center
        
        return label
    }()
    
    let cascaraServingLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.white
        label.layer.cornerRadius = 5
        label.layer.masksToBounds = true
        label.layer.borderColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1).cgColor
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.layer.borderWidth = 1
        label.textAlignment = .center
        
        return label
    }()
    
    let whiteMochaServingLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.white
        label.layer.cornerRadius = 5
        label.layer.masksToBounds = true
        label.layer.borderColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1).cgColor
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.layer.borderWidth = 1
        label.textAlignment = .center
        
        return label
    }()
    
    let mochaServingLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.white
        label.layer.cornerRadius = 5
        label.layer.masksToBounds = true
        label.layer.borderColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1).cgColor
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.layer.borderWidth = 1
        label.textAlignment = .center
        
        return label
    }()
    
    let sugarFreeVanillaServingLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.white
        label.layer.cornerRadius = 5
        label.layer.masksToBounds = true
        label.layer.borderColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1).cgColor
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.layer.borderWidth = 1
        label.textAlignment = .center
        
        return label
    }()
    
    let sugarFreeCinnamonDolceServingLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.white
        label.layer.cornerRadius = 5
        label.layer.masksToBounds = true
        label.layer.borderColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1).cgColor
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.layer.borderWidth = 1
        label.textAlignment = .center
        
        return label
    }()
    
    let pumpkinSpiceServingLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.white
        label.layer.cornerRadius = 5
        label.layer.masksToBounds = true
        label.layer.borderColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1).cgColor
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.layer.borderWidth = 1
        label.textAlignment = .center
        
        return label
    }()
    
    let gingerbreadServingLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.white
        label.layer.cornerRadius = 5
        label.layer.masksToBounds = true
        label.layer.borderColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1).cgColor
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.layer.borderWidth = 1
        label.textAlignment = .center
        
        return label
    }()
    
    let caramelBruleeServingLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.white
        label.layer.cornerRadius = 5
        label.layer.masksToBounds = true
        label.layer.borderColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1).cgColor
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.layer.borderWidth = 1
        label.textAlignment = .center
        
        return label
    }()
    
    let toastedWhiteMochaServingLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.white
        label.layer.cornerRadius = 5
        label.layer.masksToBounds = true
        label.layer.borderColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1).cgColor
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.layer.borderWidth = 1
        label.textAlignment = .center
        
        return label
    }()
    
    let vanillaStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleVanillaStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let caramelStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleCaramelStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let hazelnutStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleHazelnutStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let toffeeNutStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleToffeeNutStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let cinnamonDolceStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleCinnamonDolceStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let peppermintStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handlePeppermintStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let raspberryStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleRaspberryStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let classicStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleClassicStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let cascaraStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleCascaraStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let whiteMochaStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleWhiteMochaStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let mochaStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleMochaStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let sugarFreeVanillaStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleSugarFreeVanillaStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let sugarFreeCinnamonDolceStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleSugarFreeCinnamonDolceStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let pumpkinSpiceStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handlePumpkinSpiceStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let gingerbreadStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleGingerbreadStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let caramelBruleeStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleCaramelBruleeStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let toastedWhiteMochaStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleToastedWhiteMochaStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupScrollView()
    }
    
    private func setupView() {
        view.backgroundColor = UIColor(red: 255/255, green: 218/255, blue: 185/255, alpha: 1)
        
        scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height * 8.35)
        
        view.addSubview(syrupsTitle)
        view.addSubview(backButton)
        view.addSubview(scrollView)
        view.addSubview(nextButton)
        
        syrupsTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        syrupsTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.height * 0.05).isActive = true
        syrupsTitle.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        syrupsTitle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        syrupsTitle.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.075)
        
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
        scrollView.addSubview(servingSizeLabel)
        scrollView.addSubview(vanillaLabel)
        scrollView.addSubview(caramelLabel)
        scrollView.addSubview(hazelnutLabel)
        scrollView.addSubview(toffeeNutLabel)
        scrollView.addSubview(cinnamonDolceLabel)
        scrollView.addSubview(peppermintLabel)
        scrollView.addSubview(raspberryLabel)
        scrollView.addSubview(classicLabel)
        scrollView.addSubview(cascaraLabel)
        scrollView.addSubview(whiteMochaLabel)
        scrollView.addSubview(mochaLabel)
        scrollView.addSubview(sugarFreeVanillaLabel)
        scrollView.addSubview(sugarFreeCinnamonDolceLabel)
        scrollView.addSubview(pumpkinSpiceLabel)
        scrollView.addSubview(gingerbreadLabel)
        scrollView.addSubview(caramelBruleeLabel)
        scrollView.addSubview(toastedWhiteMochaLabel)

        servingSizeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        servingSizeLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: view.frame.height * 0.05).isActive = true
        servingSizeLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        servingSizeLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        servingSizeLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        vanillaLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        vanillaLabel.topAnchor.constraint(equalTo: servingSizeLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        vanillaLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        vanillaLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        vanillaLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(vanillaCaloriesLabel)
        scrollView.addSubview(vanillaProteinLabel)
        scrollView.addSubview(vanillaCarbsLabel)
        scrollView.addSubview(vanillaFatsLabel)
        scrollView.addSubview(vanillaSugarLabel)
        
        vanillaCaloriesLabel.centerXAnchor.constraint(equalTo: vanillaLabel.centerXAnchor).isActive = true
        vanillaCaloriesLabel.topAnchor.constraint(equalTo: vanillaLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        vanillaCaloriesLabel.widthAnchor.constraint(equalTo: vanillaLabel.widthAnchor).isActive = true
        vanillaCaloriesLabel.heightAnchor.constraint(equalTo: vanillaLabel.heightAnchor, multiplier: 1).isActive = true
        vanillaCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        vanillaProteinLabel.centerXAnchor.constraint(equalTo: vanillaCaloriesLabel.centerXAnchor).isActive = true
        vanillaProteinLabel.topAnchor.constraint(equalTo: vanillaCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        vanillaProteinLabel.widthAnchor.constraint(equalTo: vanillaLabel.widthAnchor).isActive = true
        vanillaProteinLabel.heightAnchor.constraint(equalTo: vanillaLabel.heightAnchor, multiplier: 1).isActive = true
        vanillaProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        vanillaCarbsLabel.centerXAnchor.constraint(equalTo: vanillaLabel.centerXAnchor).isActive = true
        vanillaCarbsLabel.topAnchor.constraint(equalTo: vanillaProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        vanillaCarbsLabel.widthAnchor.constraint(equalTo: vanillaLabel.widthAnchor).isActive = true
        vanillaCarbsLabel.heightAnchor.constraint(equalTo: vanillaLabel.heightAnchor, multiplier: 0.75).isActive = true
        vanillaCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        vanillaFatsLabel.centerXAnchor.constraint(equalTo: vanillaLabel.centerXAnchor).isActive = true
        vanillaFatsLabel.topAnchor.constraint(equalTo: vanillaCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        vanillaFatsLabel.widthAnchor.constraint(equalTo: vanillaLabel.widthAnchor).isActive = true
        vanillaFatsLabel.heightAnchor.constraint(equalTo: vanillaLabel.heightAnchor, multiplier: 0.75).isActive = true
        vanillaFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        vanillaSugarLabel.centerXAnchor.constraint(equalTo: vanillaLabel.centerXAnchor).isActive = true
        vanillaSugarLabel.topAnchor.constraint(equalTo: vanillaFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        vanillaSugarLabel.widthAnchor.constraint(equalTo: vanillaLabel.widthAnchor).isActive = true
        vanillaSugarLabel.heightAnchor.constraint(equalTo: vanillaLabel.heightAnchor, multiplier: 0.75).isActive = true
        vanillaSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        caramelLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        caramelLabel.topAnchor.constraint(equalTo: vanillaSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        caramelLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        caramelLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        caramelLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(caramelCaloriesLabel)
        scrollView.addSubview(caramelProteinLabel)
        scrollView.addSubview(caramelCarbsLabel)
        scrollView.addSubview(caramelFatsLabel)
        scrollView.addSubview(caramelSugarLabel)
        
        caramelCaloriesLabel.centerXAnchor.constraint(equalTo: caramelLabel.centerXAnchor).isActive = true
        caramelCaloriesLabel.topAnchor.constraint(equalTo: caramelLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        caramelCaloriesLabel.widthAnchor.constraint(equalTo: caramelLabel.widthAnchor).isActive = true
        caramelCaloriesLabel.heightAnchor.constraint(equalTo: caramelLabel.heightAnchor, multiplier: 1).isActive = true
        caramelCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        caramelProteinLabel.centerXAnchor.constraint(equalTo: caramelCaloriesLabel.centerXAnchor).isActive = true
        caramelProteinLabel.topAnchor.constraint(equalTo: caramelCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        caramelProteinLabel.widthAnchor.constraint(equalTo: caramelLabel.widthAnchor).isActive = true
        caramelProteinLabel.heightAnchor.constraint(equalTo: caramelLabel.heightAnchor, multiplier: 1).isActive = true
        caramelProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        caramelCarbsLabel.centerXAnchor.constraint(equalTo: caramelLabel.centerXAnchor).isActive = true
        caramelCarbsLabel.topAnchor.constraint(equalTo: caramelProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        caramelCarbsLabel.widthAnchor.constraint(equalTo: caramelLabel.widthAnchor).isActive = true
        caramelCarbsLabel.heightAnchor.constraint(equalTo: caramelLabel.heightAnchor, multiplier: 0.75).isActive = true
        caramelCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        caramelFatsLabel.centerXAnchor.constraint(equalTo: caramelLabel.centerXAnchor).isActive = true
        caramelFatsLabel.topAnchor.constraint(equalTo: caramelCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        caramelFatsLabel.widthAnchor.constraint(equalTo: caramelLabel.widthAnchor).isActive = true
        caramelFatsLabel.heightAnchor.constraint(equalTo: caramelLabel.heightAnchor, multiplier: 0.75).isActive = true
        caramelFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        caramelSugarLabel.centerXAnchor.constraint(equalTo: caramelLabel.centerXAnchor).isActive = true
        caramelSugarLabel.topAnchor.constraint(equalTo: caramelFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        caramelSugarLabel.widthAnchor.constraint(equalTo: caramelLabel.widthAnchor).isActive = true
        caramelSugarLabel.heightAnchor.constraint(equalTo: caramelLabel.heightAnchor, multiplier: 0.75).isActive = true
        caramelSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        hazelnutLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        hazelnutLabel.topAnchor.constraint(equalTo: caramelSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        hazelnutLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        hazelnutLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        hazelnutLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(hazelnutCaloriesLabel)
        scrollView.addSubview(hazelnutProteinLabel)
        scrollView.addSubview(hazelnutCarbsLabel)
        scrollView.addSubview(hazelnutFatsLabel)
        scrollView.addSubview(hazelnutSugarLabel)
        
        hazelnutCaloriesLabel.centerXAnchor.constraint(equalTo: hazelnutLabel.centerXAnchor).isActive = true
        hazelnutCaloriesLabel.topAnchor.constraint(equalTo: hazelnutLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        hazelnutCaloriesLabel.widthAnchor.constraint(equalTo: hazelnutLabel.widthAnchor).isActive = true
        hazelnutCaloriesLabel.heightAnchor.constraint(equalTo: hazelnutLabel.heightAnchor, multiplier: 1).isActive = true
        hazelnutCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        hazelnutProteinLabel.centerXAnchor.constraint(equalTo: hazelnutCaloriesLabel.centerXAnchor).isActive = true
        hazelnutProteinLabel.topAnchor.constraint(equalTo: hazelnutCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        hazelnutProteinLabel.widthAnchor.constraint(equalTo: hazelnutLabel.widthAnchor).isActive = true
        hazelnutProteinLabel.heightAnchor.constraint(equalTo: hazelnutLabel.heightAnchor, multiplier: 1).isActive = true
        hazelnutProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        hazelnutCarbsLabel.centerXAnchor.constraint(equalTo: hazelnutLabel.centerXAnchor).isActive = true
        hazelnutCarbsLabel.topAnchor.constraint(equalTo: hazelnutProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        hazelnutCarbsLabel.widthAnchor.constraint(equalTo: hazelnutLabel.widthAnchor).isActive = true
        hazelnutCarbsLabel.heightAnchor.constraint(equalTo: hazelnutLabel.heightAnchor, multiplier: 0.75).isActive = true
        hazelnutCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        hazelnutFatsLabel.centerXAnchor.constraint(equalTo: hazelnutLabel.centerXAnchor).isActive = true
        hazelnutFatsLabel.topAnchor.constraint(equalTo: hazelnutCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        hazelnutFatsLabel.widthAnchor.constraint(equalTo: hazelnutLabel.widthAnchor).isActive = true
        hazelnutFatsLabel.heightAnchor.constraint(equalTo: hazelnutLabel.heightAnchor, multiplier: 0.75).isActive = true
        hazelnutFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        hazelnutSugarLabel.centerXAnchor.constraint(equalTo: hazelnutLabel.centerXAnchor).isActive = true
        hazelnutSugarLabel.topAnchor.constraint(equalTo: hazelnutFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        hazelnutSugarLabel.widthAnchor.constraint(equalTo: hazelnutLabel.widthAnchor).isActive = true
        hazelnutSugarLabel.heightAnchor.constraint(equalTo: hazelnutLabel.heightAnchor, multiplier: 0.75).isActive = true
        hazelnutSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        toffeeNutLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        toffeeNutLabel.topAnchor.constraint(equalTo: hazelnutSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        toffeeNutLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        toffeeNutLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        toffeeNutLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(toffeeNutCaloriesLabel)
        scrollView.addSubview(toffeeNutProteinLabel)
        scrollView.addSubview(toffeeNutCarbsLabel)
        scrollView.addSubview(toffeeNutFatsLabel)
        scrollView.addSubview(toffeeNutSugarLabel)
        
        toffeeNutCaloriesLabel.centerXAnchor.constraint(equalTo: toffeeNutLabel.centerXAnchor).isActive = true
        toffeeNutCaloriesLabel.topAnchor.constraint(equalTo: toffeeNutLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        toffeeNutCaloriesLabel.widthAnchor.constraint(equalTo: toffeeNutLabel.widthAnchor).isActive = true
        toffeeNutCaloriesLabel.heightAnchor.constraint(equalTo: toffeeNutLabel.heightAnchor, multiplier: 1).isActive = true
        toffeeNutCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        toffeeNutProteinLabel.centerXAnchor.constraint(equalTo: toffeeNutCaloriesLabel.centerXAnchor).isActive = true
        toffeeNutProteinLabel.topAnchor.constraint(equalTo: toffeeNutCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        toffeeNutProteinLabel.widthAnchor.constraint(equalTo: toffeeNutLabel.widthAnchor).isActive = true
        toffeeNutProteinLabel.heightAnchor.constraint(equalTo: toffeeNutLabel.heightAnchor, multiplier: 1).isActive = true
        toffeeNutProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        toffeeNutCarbsLabel.centerXAnchor.constraint(equalTo: toffeeNutLabel.centerXAnchor).isActive = true
        toffeeNutCarbsLabel.topAnchor.constraint(equalTo: toffeeNutProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        toffeeNutCarbsLabel.widthAnchor.constraint(equalTo: toffeeNutLabel.widthAnchor).isActive = true
        toffeeNutCarbsLabel.heightAnchor.constraint(equalTo: toffeeNutLabel.heightAnchor, multiplier: 0.75).isActive = true
        toffeeNutCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        toffeeNutFatsLabel.centerXAnchor.constraint(equalTo: toffeeNutLabel.centerXAnchor).isActive = true
        toffeeNutFatsLabel.topAnchor.constraint(equalTo: toffeeNutCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        toffeeNutFatsLabel.widthAnchor.constraint(equalTo: toffeeNutLabel.widthAnchor).isActive = true
        toffeeNutFatsLabel.heightAnchor.constraint(equalTo: toffeeNutLabel.heightAnchor, multiplier: 0.75).isActive = true
        toffeeNutFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        toffeeNutSugarLabel.centerXAnchor.constraint(equalTo: toffeeNutLabel.centerXAnchor).isActive = true
        toffeeNutSugarLabel.topAnchor.constraint(equalTo: toffeeNutFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        toffeeNutSugarLabel.widthAnchor.constraint(equalTo: toffeeNutLabel.widthAnchor).isActive = true
        toffeeNutSugarLabel.heightAnchor.constraint(equalTo: toffeeNutLabel.heightAnchor, multiplier: 0.75).isActive = true
        toffeeNutSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        cinnamonDolceLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        cinnamonDolceLabel.topAnchor.constraint(equalTo: toffeeNutSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        cinnamonDolceLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        cinnamonDolceLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.095).isActive = true
        cinnamonDolceLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(cinnamonDolceCaloriesLabel)
        scrollView.addSubview(cinnamonDolceProteinLabel)
        scrollView.addSubview(cinnamonDolceCarbsLabel)
        scrollView.addSubview(cinnamonDolceFatsLabel)
        scrollView.addSubview(cinnamonDolceSugarLabel)
        
        cinnamonDolceCaloriesLabel.centerXAnchor.constraint(equalTo: cinnamonDolceLabel.centerXAnchor).isActive = true
        cinnamonDolceCaloriesLabel.topAnchor.constraint(equalTo: cinnamonDolceLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        cinnamonDolceCaloriesLabel.widthAnchor.constraint(equalTo: cinnamonDolceLabel.widthAnchor).isActive = true
        cinnamonDolceCaloriesLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        cinnamonDolceCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        cinnamonDolceProteinLabel.centerXAnchor.constraint(equalTo: cinnamonDolceCaloriesLabel.centerXAnchor).isActive = true
        cinnamonDolceProteinLabel.topAnchor.constraint(equalTo: cinnamonDolceCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        cinnamonDolceProteinLabel.widthAnchor.constraint(equalTo: cinnamonDolceLabel.widthAnchor).isActive = true
        cinnamonDolceProteinLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        cinnamonDolceProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        cinnamonDolceCarbsLabel.centerXAnchor.constraint(equalTo: cinnamonDolceLabel.centerXAnchor).isActive = true
        cinnamonDolceCarbsLabel.topAnchor.constraint(equalTo: cinnamonDolceProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        cinnamonDolceCarbsLabel.widthAnchor.constraint(equalTo: cinnamonDolceLabel.widthAnchor).isActive = true
        cinnamonDolceCarbsLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        cinnamonDolceCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        cinnamonDolceFatsLabel.centerXAnchor.constraint(equalTo: cinnamonDolceLabel.centerXAnchor).isActive = true
        cinnamonDolceFatsLabel.topAnchor.constraint(equalTo: cinnamonDolceCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        cinnamonDolceFatsLabel.widthAnchor.constraint(equalTo: cinnamonDolceLabel.widthAnchor).isActive = true
        cinnamonDolceFatsLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        cinnamonDolceFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        cinnamonDolceSugarLabel.centerXAnchor.constraint(equalTo: cinnamonDolceLabel.centerXAnchor).isActive = true
        cinnamonDolceSugarLabel.topAnchor.constraint(equalTo: cinnamonDolceFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        cinnamonDolceSugarLabel.widthAnchor.constraint(equalTo: cinnamonDolceLabel.widthAnchor).isActive = true
        cinnamonDolceSugarLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        cinnamonDolceSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        peppermintLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        peppermintLabel.topAnchor.constraint(equalTo: cinnamonDolceSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        peppermintLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        peppermintLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        peppermintLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(peppermintCaloriesLabel)
        scrollView.addSubview(peppermintProteinLabel)
        scrollView.addSubview(peppermintCarbsLabel)
        scrollView.addSubview(peppermintFatsLabel)
        scrollView.addSubview(peppermintSugarLabel)
        
        peppermintCaloriesLabel.centerXAnchor.constraint(equalTo: peppermintLabel.centerXAnchor).isActive = true
        peppermintCaloriesLabel.topAnchor.constraint(equalTo: peppermintLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        peppermintCaloriesLabel.widthAnchor.constraint(equalTo: peppermintLabel.widthAnchor).isActive = true
        peppermintCaloriesLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        peppermintCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        peppermintProteinLabel.centerXAnchor.constraint(equalTo: peppermintCaloriesLabel.centerXAnchor).isActive = true
        peppermintProteinLabel.topAnchor.constraint(equalTo: peppermintCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        peppermintProteinLabel.widthAnchor.constraint(equalTo: peppermintLabel.widthAnchor).isActive = true
        peppermintProteinLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        peppermintProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        peppermintCarbsLabel.centerXAnchor.constraint(equalTo: peppermintLabel.centerXAnchor).isActive = true
        peppermintCarbsLabel.topAnchor.constraint(equalTo: peppermintProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        peppermintCarbsLabel.widthAnchor.constraint(equalTo: peppermintLabel.widthAnchor).isActive = true
        peppermintCarbsLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        peppermintCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        peppermintFatsLabel.centerXAnchor.constraint(equalTo: peppermintLabel.centerXAnchor).isActive = true
        peppermintFatsLabel.topAnchor.constraint(equalTo: peppermintCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        peppermintFatsLabel.widthAnchor.constraint(equalTo: peppermintLabel.widthAnchor).isActive = true
        peppermintFatsLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        peppermintFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        peppermintSugarLabel.centerXAnchor.constraint(equalTo: peppermintLabel.centerXAnchor).isActive = true
        peppermintSugarLabel.topAnchor.constraint(equalTo: peppermintFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        peppermintSugarLabel.widthAnchor.constraint(equalTo: peppermintLabel.widthAnchor).isActive = true
        peppermintSugarLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        peppermintSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        raspberryLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        raspberryLabel.topAnchor.constraint(equalTo: peppermintSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        raspberryLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        raspberryLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        raspberryLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(raspberryCaloriesLabel)
        scrollView.addSubview(raspberryProteinLabel)
        scrollView.addSubview(raspberryCarbsLabel)
        scrollView.addSubview(raspberryFatsLabel)
        scrollView.addSubview(raspberrySugarLabel)
        
        raspberryCaloriesLabel.centerXAnchor.constraint(equalTo: raspberryLabel.centerXAnchor).isActive = true
        raspberryCaloriesLabel.topAnchor.constraint(equalTo: raspberryLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        raspberryCaloriesLabel.widthAnchor.constraint(equalTo: raspberryLabel.widthAnchor).isActive = true
        raspberryCaloriesLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        raspberryCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        raspberryProteinLabel.centerXAnchor.constraint(equalTo: raspberryCaloriesLabel.centerXAnchor).isActive = true
        raspberryProteinLabel.topAnchor.constraint(equalTo: raspberryCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        raspberryProteinLabel.widthAnchor.constraint(equalTo: raspberryLabel.widthAnchor).isActive = true
        raspberryProteinLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        raspberryProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        raspberryCarbsLabel.centerXAnchor.constraint(equalTo:raspberryLabel.centerXAnchor).isActive = true
        raspberryCarbsLabel.topAnchor.constraint(equalTo: raspberryProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        raspberryCarbsLabel.widthAnchor.constraint(equalTo: raspberryLabel.widthAnchor).isActive = true
        raspberryCarbsLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        raspberryCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        raspberryFatsLabel.centerXAnchor.constraint(equalTo: raspberryLabel.centerXAnchor).isActive = true
        raspberryFatsLabel.topAnchor.constraint(equalTo: raspberryCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        raspberryFatsLabel.widthAnchor.constraint(equalTo: raspberryLabel.widthAnchor).isActive = true
        raspberryFatsLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        raspberryFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        raspberrySugarLabel.centerXAnchor.constraint(equalTo: raspberryLabel.centerXAnchor).isActive = true
        raspberrySugarLabel.topAnchor.constraint(equalTo: raspberryFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        raspberrySugarLabel.widthAnchor.constraint(equalTo: raspberryLabel.widthAnchor).isActive = true
        raspberrySugarLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        raspberrySugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        classicLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        classicLabel.topAnchor.constraint(equalTo: raspberrySugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        classicLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        classicLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        classicLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(classicCaloriesLabel)
        scrollView.addSubview(classicProteinLabel)
        scrollView.addSubview(classicCarbsLabel)
        scrollView.addSubview(classicFatsLabel)
        scrollView.addSubview(classicSugarLabel)
        
        classicCaloriesLabel.centerXAnchor.constraint(equalTo: classicLabel.centerXAnchor).isActive = true
        classicCaloriesLabel.topAnchor.constraint(equalTo: classicLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        classicCaloriesLabel.widthAnchor.constraint(equalTo: classicLabel.widthAnchor).isActive = true
        classicCaloriesLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        classicCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        classicProteinLabel.centerXAnchor.constraint(equalTo: classicCaloriesLabel.centerXAnchor).isActive = true
        classicProteinLabel.topAnchor.constraint(equalTo: classicCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        classicProteinLabel.widthAnchor.constraint(equalTo: classicLabel.widthAnchor).isActive = true
        classicProteinLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        classicProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        classicCarbsLabel.centerXAnchor.constraint(equalTo:classicLabel.centerXAnchor).isActive = true
        classicCarbsLabel.topAnchor.constraint(equalTo: classicProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        classicCarbsLabel.widthAnchor.constraint(equalTo: classicLabel.widthAnchor).isActive = true
        classicCarbsLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        classicCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        classicFatsLabel.centerXAnchor.constraint(equalTo: classicLabel.centerXAnchor).isActive = true
        classicFatsLabel.topAnchor.constraint(equalTo: classicCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        classicFatsLabel.widthAnchor.constraint(equalTo: classicLabel.widthAnchor).isActive = true
        classicFatsLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        classicFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        classicSugarLabel.centerXAnchor.constraint(equalTo: classicLabel.centerXAnchor).isActive = true
        classicSugarLabel.topAnchor.constraint(equalTo: classicFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        classicSugarLabel.widthAnchor.constraint(equalTo: classicLabel.widthAnchor).isActive = true
        classicSugarLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        classicSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        cascaraLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        cascaraLabel.topAnchor.constraint(equalTo: classicSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        cascaraLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        cascaraLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        cascaraLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(cascaraCaloriesLabel)
        scrollView.addSubview(cascaraProteinLabel)
        scrollView.addSubview(cascaraCarbsLabel)
        scrollView.addSubview(cascaraFatsLabel)
        scrollView.addSubview(cascaraSugarLabel)
        
        cascaraCaloriesLabel.centerXAnchor.constraint(equalTo: cascaraLabel.centerXAnchor).isActive = true
        cascaraCaloriesLabel.topAnchor.constraint(equalTo: cascaraLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        cascaraCaloriesLabel.widthAnchor.constraint(equalTo: cascaraLabel.widthAnchor).isActive = true
        cascaraCaloriesLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        cascaraCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        cascaraProteinLabel.centerXAnchor.constraint(equalTo: cascaraCaloriesLabel.centerXAnchor).isActive = true
        cascaraProteinLabel.topAnchor.constraint(equalTo: cascaraCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        cascaraProteinLabel.widthAnchor.constraint(equalTo: cascaraLabel.widthAnchor).isActive = true
        cascaraProteinLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        cascaraProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        cascaraCarbsLabel.centerXAnchor.constraint(equalTo: cascaraLabel.centerXAnchor).isActive = true
        cascaraCarbsLabel.topAnchor.constraint(equalTo: cascaraProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        cascaraCarbsLabel.widthAnchor.constraint(equalTo: cascaraLabel.widthAnchor).isActive = true
        cascaraCarbsLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        cascaraCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        cascaraFatsLabel.centerXAnchor.constraint(equalTo: cascaraLabel.centerXAnchor).isActive = true
        cascaraFatsLabel.topAnchor.constraint(equalTo: cascaraCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        cascaraFatsLabel.widthAnchor.constraint(equalTo: cascaraLabel.widthAnchor).isActive = true
        cascaraFatsLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        cascaraFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        cascaraSugarLabel.centerXAnchor.constraint(equalTo: cascaraLabel.centerXAnchor).isActive = true
        cascaraSugarLabel.topAnchor.constraint(equalTo: cascaraFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        cascaraSugarLabel.widthAnchor.constraint(equalTo: cascaraLabel.widthAnchor).isActive = true
        cascaraSugarLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        cascaraSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        whiteMochaLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        whiteMochaLabel.topAnchor.constraint(equalTo: cascaraSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        whiteMochaLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        whiteMochaLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        whiteMochaLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(whiteMochaCaloriesLabel)
        scrollView.addSubview(whiteMochaProteinLabel)
        scrollView.addSubview(whiteMochaCarbsLabel)
        scrollView.addSubview(whiteMochaFatsLabel)
        scrollView.addSubview(whiteMochaSugarLabel)
        
        whiteMochaCaloriesLabel.centerXAnchor.constraint(equalTo: whiteMochaLabel.centerXAnchor).isActive = true
        whiteMochaCaloriesLabel.topAnchor.constraint(equalTo: whiteMochaLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        whiteMochaCaloriesLabel.widthAnchor.constraint(equalTo: whiteMochaLabel.widthAnchor).isActive = true
        whiteMochaCaloriesLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        whiteMochaCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        whiteMochaProteinLabel.centerXAnchor.constraint(equalTo: whiteMochaCaloriesLabel.centerXAnchor).isActive = true
        whiteMochaProteinLabel.topAnchor.constraint(equalTo: whiteMochaCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        whiteMochaProteinLabel.widthAnchor.constraint(equalTo: whiteMochaLabel.widthAnchor).isActive = true
        whiteMochaProteinLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        whiteMochaProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        whiteMochaCarbsLabel.centerXAnchor.constraint(equalTo: whiteMochaLabel.centerXAnchor).isActive = true
        whiteMochaCarbsLabel.topAnchor.constraint(equalTo: whiteMochaProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        whiteMochaCarbsLabel.widthAnchor.constraint(equalTo: whiteMochaLabel.widthAnchor).isActive = true
        whiteMochaCarbsLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        whiteMochaCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        whiteMochaFatsLabel.centerXAnchor.constraint(equalTo: whiteMochaLabel.centerXAnchor).isActive = true
        whiteMochaFatsLabel.topAnchor.constraint(equalTo: whiteMochaCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        whiteMochaFatsLabel.widthAnchor.constraint(equalTo: whiteMochaLabel.widthAnchor).isActive = true
        whiteMochaFatsLabel.heightAnchor.constraint(equalTo: whiteMochaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        whiteMochaFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        whiteMochaSugarLabel.centerXAnchor.constraint(equalTo: whiteMochaLabel.centerXAnchor).isActive = true
        whiteMochaSugarLabel.topAnchor.constraint(equalTo: whiteMochaFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        whiteMochaSugarLabel.widthAnchor.constraint(equalTo: whiteMochaLabel.widthAnchor).isActive = true
        whiteMochaSugarLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        whiteMochaSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        mochaLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        mochaLabel.topAnchor.constraint(equalTo: whiteMochaSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        mochaLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        mochaLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        mochaLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(mochaCaloriesLabel)
        scrollView.addSubview(mochaProteinLabel)
        scrollView.addSubview(mochaCarbsLabel)
        scrollView.addSubview(mochaFatsLabel)
        scrollView.addSubview(mochaSugarLabel)
        
        mochaCaloriesLabel.centerXAnchor.constraint(equalTo: mochaLabel.centerXAnchor).isActive = true
        mochaCaloriesLabel.topAnchor.constraint(equalTo: mochaLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        mochaCaloriesLabel.widthAnchor.constraint(equalTo: mochaLabel.widthAnchor).isActive = true
        mochaCaloriesLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        mochaCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        mochaProteinLabel.centerXAnchor.constraint(equalTo: mochaCaloriesLabel.centerXAnchor).isActive = true
        mochaProteinLabel.topAnchor.constraint(equalTo: mochaCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        mochaProteinLabel.widthAnchor.constraint(equalTo: mochaLabel.widthAnchor).isActive = true
        mochaProteinLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        mochaProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        mochaCarbsLabel.centerXAnchor.constraint(equalTo: mochaLabel.centerXAnchor).isActive = true
        mochaCarbsLabel.topAnchor.constraint(equalTo: mochaProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        mochaCarbsLabel.widthAnchor.constraint(equalTo: mochaLabel.widthAnchor).isActive = true
        mochaCarbsLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        mochaCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        mochaFatsLabel.centerXAnchor.constraint(equalTo: mochaLabel.centerXAnchor).isActive = true
        mochaFatsLabel.topAnchor.constraint(equalTo: mochaCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        mochaFatsLabel.widthAnchor.constraint(equalTo: mochaLabel.widthAnchor).isActive = true
        mochaFatsLabel.heightAnchor.constraint(equalTo: mochaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        mochaFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        mochaSugarLabel.centerXAnchor.constraint(equalTo: mochaLabel.centerXAnchor).isActive = true
        mochaSugarLabel.topAnchor.constraint(equalTo: mochaFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        mochaSugarLabel.widthAnchor.constraint(equalTo: mochaLabel.widthAnchor).isActive = true
        mochaSugarLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        mochaSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        sugarFreeVanillaLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        sugarFreeVanillaLabel.topAnchor.constraint(equalTo: mochaSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        sugarFreeVanillaLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        sugarFreeVanillaLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.095).isActive = true
        sugarFreeVanillaLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(sugarFreeVanillaCaloriesLabel)
        scrollView.addSubview(sugarFreeVanillaProteinLabel)
        scrollView.addSubview(sugarFreeVanillaCarbsLabel)
        scrollView.addSubview(sugarFreeVanillaFatsLabel)
        scrollView.addSubview(sugarFreeVanillaSugarLabel)
        
        sugarFreeVanillaCaloriesLabel.centerXAnchor.constraint(equalTo: sugarFreeVanillaLabel.centerXAnchor).isActive = true
        sugarFreeVanillaCaloriesLabel.topAnchor.constraint(equalTo: sugarFreeVanillaLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        sugarFreeVanillaCaloriesLabel.widthAnchor.constraint(equalTo: sugarFreeVanillaLabel.widthAnchor).isActive = true
        sugarFreeVanillaCaloriesLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        sugarFreeVanillaCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        sugarFreeVanillaProteinLabel.centerXAnchor.constraint(equalTo: sugarFreeVanillaCaloriesLabel.centerXAnchor).isActive = true
        sugarFreeVanillaProteinLabel.topAnchor.constraint(equalTo: sugarFreeVanillaCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        sugarFreeVanillaProteinLabel.widthAnchor.constraint(equalTo: sugarFreeVanillaLabel.widthAnchor).isActive = true
        sugarFreeVanillaProteinLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        sugarFreeVanillaProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        sugarFreeVanillaCarbsLabel.centerXAnchor.constraint(equalTo: sugarFreeVanillaLabel.centerXAnchor).isActive = true
        sugarFreeVanillaCarbsLabel.topAnchor.constraint(equalTo: sugarFreeVanillaProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        sugarFreeVanillaCarbsLabel.widthAnchor.constraint(equalTo: sugarFreeVanillaLabel.widthAnchor).isActive = true
        sugarFreeVanillaCarbsLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        sugarFreeVanillaCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        sugarFreeVanillaFatsLabel.centerXAnchor.constraint(equalTo: sugarFreeVanillaLabel.centerXAnchor).isActive = true
        sugarFreeVanillaFatsLabel.topAnchor.constraint(equalTo: sugarFreeVanillaCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        sugarFreeVanillaFatsLabel.widthAnchor.constraint(equalTo: sugarFreeVanillaLabel.widthAnchor).isActive = true
        sugarFreeVanillaFatsLabel.heightAnchor.constraint(equalTo: sugarFreeVanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        sugarFreeVanillaFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        sugarFreeVanillaSugarLabel.centerXAnchor.constraint(equalTo: sugarFreeVanillaLabel.centerXAnchor).isActive = true
        sugarFreeVanillaSugarLabel.topAnchor.constraint(equalTo: sugarFreeVanillaFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        sugarFreeVanillaSugarLabel.widthAnchor.constraint(equalTo: sugarFreeVanillaLabel.widthAnchor).isActive = true
        sugarFreeVanillaSugarLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        sugarFreeVanillaSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        sugarFreeCinnamonDolceLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        sugarFreeCinnamonDolceLabel.topAnchor.constraint(equalTo: sugarFreeVanillaSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        sugarFreeCinnamonDolceLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        sugarFreeCinnamonDolceLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.135).isActive = true
        sugarFreeCinnamonDolceLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(sugarFreeCinnamonDolceCaloriesLabel)
        scrollView.addSubview(sugarFreeCinnamonDolceProteinLabel)
        scrollView.addSubview(sugarFreeCinnamonDolceCarbsLabel)
        scrollView.addSubview(sugarFreeCinnamonDolceFatsLabel)
        scrollView.addSubview(sugarFreeCinnamonDolceSugarLabel)
        
        sugarFreeCinnamonDolceCaloriesLabel.centerXAnchor.constraint(equalTo: sugarFreeCinnamonDolceLabel.centerXAnchor).isActive = true
        sugarFreeCinnamonDolceCaloriesLabel.topAnchor.constraint(equalTo: sugarFreeCinnamonDolceLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        sugarFreeCinnamonDolceCaloriesLabel.widthAnchor.constraint(equalTo: sugarFreeCinnamonDolceLabel.widthAnchor).isActive = true
        sugarFreeCinnamonDolceCaloriesLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        sugarFreeCinnamonDolceCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        sugarFreeCinnamonDolceProteinLabel.centerXAnchor.constraint(equalTo: sugarFreeCinnamonDolceCaloriesLabel.centerXAnchor).isActive = true
        sugarFreeCinnamonDolceProteinLabel.topAnchor.constraint(equalTo: sugarFreeCinnamonDolceCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        sugarFreeCinnamonDolceProteinLabel.widthAnchor.constraint(equalTo: sugarFreeCinnamonDolceLabel.widthAnchor).isActive = true
        sugarFreeCinnamonDolceProteinLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        sugarFreeCinnamonDolceProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        sugarFreeCinnamonDolceCarbsLabel.centerXAnchor.constraint(equalTo: sugarFreeCinnamonDolceLabel.centerXAnchor).isActive = true
        sugarFreeCinnamonDolceCarbsLabel.topAnchor.constraint(equalTo: sugarFreeCinnamonDolceProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        sugarFreeCinnamonDolceCarbsLabel.widthAnchor.constraint(equalTo: sugarFreeCinnamonDolceLabel.widthAnchor).isActive = true
        sugarFreeCinnamonDolceCarbsLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        sugarFreeCinnamonDolceCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        sugarFreeCinnamonDolceFatsLabel.centerXAnchor.constraint(equalTo: sugarFreeCinnamonDolceLabel.centerXAnchor).isActive = true
        sugarFreeCinnamonDolceFatsLabel.topAnchor.constraint(equalTo: sugarFreeCinnamonDolceCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        sugarFreeCinnamonDolceFatsLabel.widthAnchor.constraint(equalTo: sugarFreeCinnamonDolceLabel.widthAnchor).isActive = true
        sugarFreeCinnamonDolceFatsLabel.heightAnchor.constraint(equalTo: sugarFreeCinnamonDolceCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        sugarFreeCinnamonDolceFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        sugarFreeCinnamonDolceSugarLabel.centerXAnchor.constraint(equalTo: sugarFreeCinnamonDolceLabel.centerXAnchor).isActive = true
        sugarFreeCinnamonDolceSugarLabel.topAnchor.constraint(equalTo: sugarFreeCinnamonDolceFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        sugarFreeCinnamonDolceSugarLabel.widthAnchor.constraint(equalTo: sugarFreeCinnamonDolceLabel.widthAnchor).isActive = true
        sugarFreeCinnamonDolceSugarLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        sugarFreeCinnamonDolceSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        pumpkinSpiceLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        pumpkinSpiceLabel.topAnchor.constraint(equalTo: sugarFreeCinnamonDolceSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        pumpkinSpiceLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        pumpkinSpiceLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.095).isActive = true
        pumpkinSpiceLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(pumpkinSpiceCaloriesLabel)
        scrollView.addSubview(pumpkinSpiceProteinLabel)
        scrollView.addSubview(pumpkinSpiceCarbsLabel)
        scrollView.addSubview(pumpkinSpiceFatsLabel)
        scrollView.addSubview(pumpkinSpiceSugarLabel)
        
        pumpkinSpiceCaloriesLabel.centerXAnchor.constraint(equalTo: pumpkinSpiceLabel.centerXAnchor).isActive = true
        pumpkinSpiceCaloriesLabel.topAnchor.constraint(equalTo: pumpkinSpiceLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        pumpkinSpiceCaloriesLabel.widthAnchor.constraint(equalTo: pumpkinSpiceLabel.widthAnchor).isActive = true
        pumpkinSpiceCaloriesLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        pumpkinSpiceCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        pumpkinSpiceProteinLabel.centerXAnchor.constraint(equalTo: pumpkinSpiceCaloriesLabel.centerXAnchor).isActive = true
        pumpkinSpiceProteinLabel.topAnchor.constraint(equalTo: pumpkinSpiceCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        pumpkinSpiceProteinLabel.widthAnchor.constraint(equalTo: pumpkinSpiceLabel.widthAnchor).isActive = true
        pumpkinSpiceProteinLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        pumpkinSpiceProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        pumpkinSpiceCarbsLabel.centerXAnchor.constraint(equalTo: pumpkinSpiceLabel.centerXAnchor).isActive = true
        pumpkinSpiceCarbsLabel.topAnchor.constraint(equalTo: pumpkinSpiceProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        pumpkinSpiceCarbsLabel.widthAnchor.constraint(equalTo: pumpkinSpiceLabel.widthAnchor).isActive = true
        pumpkinSpiceCarbsLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        pumpkinSpiceCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        pumpkinSpiceFatsLabel.centerXAnchor.constraint(equalTo: pumpkinSpiceLabel.centerXAnchor).isActive = true
        pumpkinSpiceFatsLabel.topAnchor.constraint(equalTo: pumpkinSpiceCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        pumpkinSpiceFatsLabel.widthAnchor.constraint(equalTo: pumpkinSpiceLabel.widthAnchor).isActive = true
        pumpkinSpiceFatsLabel.heightAnchor.constraint(equalTo: pumpkinSpiceCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        pumpkinSpiceFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        pumpkinSpiceSugarLabel.centerXAnchor.constraint(equalTo: pumpkinSpiceLabel.centerXAnchor).isActive = true
        pumpkinSpiceSugarLabel.topAnchor.constraint(equalTo: pumpkinSpiceFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        pumpkinSpiceSugarLabel.widthAnchor.constraint(equalTo: pumpkinSpiceLabel.widthAnchor).isActive = true
        pumpkinSpiceSugarLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        pumpkinSpiceSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        gingerbreadLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        gingerbreadLabel.topAnchor.constraint(equalTo: pumpkinSpiceSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        gingerbreadLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        gingerbreadLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        gingerbreadLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(gingerbreadCaloriesLabel)
        scrollView.addSubview(gingerbreadProteinLabel)
        scrollView.addSubview(gingerbreadCarbsLabel)
        scrollView.addSubview(gingerbreadFatsLabel)
        scrollView.addSubview(gingerbreadSugarLabel)
        
        gingerbreadCaloriesLabel.centerXAnchor.constraint(equalTo: gingerbreadLabel.centerXAnchor).isActive = true
        gingerbreadCaloriesLabel.topAnchor.constraint(equalTo: gingerbreadLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        gingerbreadCaloriesLabel.widthAnchor.constraint(equalTo: gingerbreadLabel.widthAnchor).isActive = true
        gingerbreadCaloriesLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        gingerbreadCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        gingerbreadProteinLabel.centerXAnchor.constraint(equalTo: gingerbreadCaloriesLabel.centerXAnchor).isActive = true
        gingerbreadProteinLabel.topAnchor.constraint(equalTo: gingerbreadCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        gingerbreadProteinLabel.widthAnchor.constraint(equalTo: gingerbreadLabel.widthAnchor).isActive = true
        gingerbreadProteinLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        gingerbreadProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        gingerbreadCarbsLabel.centerXAnchor.constraint(equalTo: gingerbreadLabel.centerXAnchor).isActive = true
        gingerbreadCarbsLabel.topAnchor.constraint(equalTo: gingerbreadProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        gingerbreadCarbsLabel.widthAnchor.constraint(equalTo: gingerbreadLabel.widthAnchor).isActive = true
        gingerbreadCarbsLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        gingerbreadCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        gingerbreadFatsLabel.centerXAnchor.constraint(equalTo: gingerbreadLabel.centerXAnchor).isActive = true
        gingerbreadFatsLabel.topAnchor.constraint(equalTo: gingerbreadCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        gingerbreadFatsLabel.widthAnchor.constraint(equalTo: gingerbreadLabel.widthAnchor).isActive = true
        gingerbreadFatsLabel.heightAnchor.constraint(equalTo: gingerbreadCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        gingerbreadFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        gingerbreadSugarLabel.centerXAnchor.constraint(equalTo: gingerbreadLabel.centerXAnchor).isActive = true
        gingerbreadSugarLabel.topAnchor.constraint(equalTo: gingerbreadFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        gingerbreadSugarLabel.widthAnchor.constraint(equalTo: gingerbreadLabel.widthAnchor).isActive = true
        gingerbreadSugarLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        gingerbreadSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        caramelBruleeLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        caramelBruleeLabel.topAnchor.constraint(equalTo: gingerbreadSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        caramelBruleeLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        caramelBruleeLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.095).isActive = true
        caramelBruleeLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(caramelBruleeCaloriesLabel)
        scrollView.addSubview(caramelBruleeProteinLabel)
        scrollView.addSubview(caramelBruleeCarbsLabel)
        scrollView.addSubview(caramelBruleeFatsLabel)
        scrollView.addSubview(caramelBruleeSugarLabel)
        
        caramelBruleeCaloriesLabel.centerXAnchor.constraint(equalTo: caramelBruleeLabel.centerXAnchor).isActive = true
        caramelBruleeCaloriesLabel.topAnchor.constraint(equalTo: caramelBruleeLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        caramelBruleeCaloriesLabel.widthAnchor.constraint(equalTo: caramelBruleeLabel.widthAnchor).isActive = true
        caramelBruleeCaloriesLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        caramelBruleeCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        caramelBruleeProteinLabel.centerXAnchor.constraint(equalTo: caramelBruleeCaloriesLabel.centerXAnchor).isActive = true
        caramelBruleeProteinLabel.topAnchor.constraint(equalTo: caramelBruleeCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        caramelBruleeProteinLabel.widthAnchor.constraint(equalTo: caramelBruleeLabel.widthAnchor).isActive = true
        caramelBruleeProteinLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        caramelBruleeProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        caramelBruleeCarbsLabel.centerXAnchor.constraint(equalTo: caramelBruleeLabel.centerXAnchor).isActive = true
        caramelBruleeCarbsLabel.topAnchor.constraint(equalTo: caramelBruleeProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        caramelBruleeCarbsLabel.widthAnchor.constraint(equalTo: caramelBruleeLabel.widthAnchor).isActive = true
        caramelBruleeCarbsLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        caramelBruleeCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        caramelBruleeFatsLabel.centerXAnchor.constraint(equalTo: caramelBruleeLabel.centerXAnchor).isActive = true
        caramelBruleeFatsLabel.topAnchor.constraint(equalTo: caramelBruleeCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        caramelBruleeFatsLabel.widthAnchor.constraint(equalTo: caramelBruleeLabel.widthAnchor).isActive = true
        caramelBruleeFatsLabel.heightAnchor.constraint(equalTo: caramelBruleeCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        caramelBruleeFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        caramelBruleeSugarLabel.centerXAnchor.constraint(equalTo: caramelBruleeLabel.centerXAnchor).isActive = true
        caramelBruleeSugarLabel.topAnchor.constraint(equalTo: caramelBruleeFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        caramelBruleeSugarLabel.widthAnchor.constraint(equalTo: caramelBruleeLabel.widthAnchor).isActive = true
        caramelBruleeSugarLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        caramelBruleeSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        toastedWhiteMochaLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        toastedWhiteMochaLabel.topAnchor.constraint(equalTo: caramelBruleeSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        toastedWhiteMochaLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        toastedWhiteMochaLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.095).isActive = true
        toastedWhiteMochaLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(toastedWhiteMochaCaloriesLabel)
        scrollView.addSubview(toastedWhiteMochaProteinLabel)
        scrollView.addSubview(toastedWhiteMochaCarbsLabel)
        scrollView.addSubview(toastedWhiteMochaFatsLabel)
        scrollView.addSubview(toastedWhiteMochaSugarLabel)
        
        toastedWhiteMochaCaloriesLabel.centerXAnchor.constraint(equalTo: toastedWhiteMochaLabel.centerXAnchor).isActive = true
        toastedWhiteMochaCaloriesLabel.topAnchor.constraint(equalTo: toastedWhiteMochaLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        toastedWhiteMochaCaloriesLabel.widthAnchor.constraint(equalTo: toastedWhiteMochaLabel.widthAnchor).isActive = true
        toastedWhiteMochaCaloriesLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        toastedWhiteMochaCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        toastedWhiteMochaProteinLabel.centerXAnchor.constraint(equalTo: toastedWhiteMochaCaloriesLabel.centerXAnchor).isActive = true
        toastedWhiteMochaProteinLabel.topAnchor.constraint(equalTo: toastedWhiteMochaCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        toastedWhiteMochaProteinLabel.widthAnchor.constraint(equalTo: toastedWhiteMochaLabel.widthAnchor).isActive = true
        toastedWhiteMochaProteinLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        toastedWhiteMochaProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        toastedWhiteMochaCarbsLabel.centerXAnchor.constraint(equalTo: toastedWhiteMochaLabel.centerXAnchor).isActive = true
        toastedWhiteMochaCarbsLabel.topAnchor.constraint(equalTo: toastedWhiteMochaProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        toastedWhiteMochaCarbsLabel.widthAnchor.constraint(equalTo: toastedWhiteMochaLabel.widthAnchor).isActive = true
        toastedWhiteMochaCarbsLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        toastedWhiteMochaCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        toastedWhiteMochaFatsLabel.centerXAnchor.constraint(equalTo: toastedWhiteMochaLabel.centerXAnchor).isActive = true
        toastedWhiteMochaFatsLabel.topAnchor.constraint(equalTo: toastedWhiteMochaCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        toastedWhiteMochaFatsLabel.widthAnchor.constraint(equalTo: toastedWhiteMochaLabel.widthAnchor).isActive = true
        toastedWhiteMochaFatsLabel.heightAnchor.constraint(equalTo: toastedWhiteMochaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        toastedWhiteMochaFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        toastedWhiteMochaSugarLabel.centerXAnchor.constraint(equalTo: toastedWhiteMochaLabel.centerXAnchor).isActive = true
        toastedWhiteMochaSugarLabel.topAnchor.constraint(equalTo: toastedWhiteMochaFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        toastedWhiteMochaSugarLabel.widthAnchor.constraint(equalTo: toastedWhiteMochaLabel.widthAnchor).isActive = true
        toastedWhiteMochaSugarLabel.heightAnchor.constraint(equalTo: vanillaCaloriesLabel.heightAnchor, multiplier: 1).isActive = true
        toastedWhiteMochaSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        scrollView.addSubview(vanillaServingLabel)
        scrollView.addSubview(caramelServingLabel)
        scrollView.addSubview(hazelnutServingLabel)
        scrollView.addSubview(toffeeNutServingLabel)
        scrollView.addSubview(cinnamonDolceServingLabel)
        scrollView.addSubview(peppermintServingLabel)
        scrollView.addSubview(raspberryServingLabel)
        scrollView.addSubview(classicServingLabel)
        scrollView.addSubview(cascaraServingLabel)
        scrollView.addSubview(whiteMochaServingLabel)
        scrollView.addSubview(mochaServingLabel)
        scrollView.addSubview(sugarFreeVanillaServingLabel)
        scrollView.addSubview(sugarFreeCinnamonDolceServingLabel)
        scrollView.addSubview(pumpkinSpiceServingLabel)
        scrollView.addSubview(gingerbreadServingLabel)
        scrollView.addSubview(caramelBruleeServingLabel)
        scrollView.addSubview(toastedWhiteMochaServingLabel)
        
        vanillaServingLabel.leftAnchor.constraint(equalTo: vanillaLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        vanillaServingLabel.centerYAnchor.constraint(equalTo: vanillaLabel.centerYAnchor).isActive = true
        vanillaServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        vanillaServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        vanillaServingLabel.text = "\(vanillaSyrupPumps)"
        vanillaServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        caramelServingLabel.leftAnchor.constraint(equalTo: caramelLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        caramelServingLabel.centerYAnchor.constraint(equalTo: caramelLabel.centerYAnchor).isActive = true
        caramelServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        caramelServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        caramelServingLabel.text = "\(caramelSyrupPumps)"
        caramelServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        hazelnutServingLabel.leftAnchor.constraint(equalTo: hazelnutLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        hazelnutServingLabel.centerYAnchor.constraint(equalTo: hazelnutLabel.centerYAnchor).isActive = true
        hazelnutServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        hazelnutServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        hazelnutServingLabel.text = "\(hazelnutSyrupPumps)"
        hazelnutServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        toffeeNutServingLabel.leftAnchor.constraint(equalTo: toffeeNutLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        toffeeNutServingLabel.centerYAnchor.constraint(equalTo: toffeeNutLabel.centerYAnchor).isActive = true
        toffeeNutServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        toffeeNutServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        toffeeNutServingLabel.text = "\(toffeeNutSyrupPumps)"
        toffeeNutServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        cinnamonDolceServingLabel.leftAnchor.constraint(equalTo: cinnamonDolceLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        cinnamonDolceServingLabel.centerYAnchor.constraint(equalTo: cinnamonDolceLabel.centerYAnchor).isActive = true
        cinnamonDolceServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        cinnamonDolceServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        cinnamonDolceServingLabel.text = "\(cinnamonDolceSyrupPumps)"
        cinnamonDolceServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        peppermintServingLabel.leftAnchor.constraint(equalTo: peppermintLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        peppermintServingLabel.centerYAnchor.constraint(equalTo: peppermintLabel.centerYAnchor).isActive = true
        peppermintServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        peppermintServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        peppermintServingLabel.text = "\(peppermintSyrupPumps)"
        peppermintServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        raspberryServingLabel.leftAnchor.constraint(equalTo: raspberryLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        raspberryServingLabel.centerYAnchor.constraint(equalTo: raspberryLabel.centerYAnchor).isActive = true
        raspberryServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        raspberryServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        raspberryServingLabel.text = "\(raspberrySyrupPumps)"
        raspberryServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        classicServingLabel.leftAnchor.constraint(equalTo: classicLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        classicServingLabel.centerYAnchor.constraint(equalTo: classicLabel.centerYAnchor).isActive = true
        classicServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        classicServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        classicServingLabel.text = "\(classicSyrupPumps)"
        classicServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        cascaraServingLabel.leftAnchor.constraint(equalTo: cascaraLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        cascaraServingLabel.centerYAnchor.constraint(equalTo: cascaraLabel.centerYAnchor).isActive = true
        cascaraServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        cascaraServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        cascaraServingLabel.text = "\(cascaraSyrupPumps)"
        cascaraServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        whiteMochaServingLabel.leftAnchor.constraint(equalTo: whiteMochaLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        whiteMochaServingLabel.centerYAnchor.constraint(equalTo: whiteMochaLabel.centerYAnchor).isActive = true
        whiteMochaServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        whiteMochaServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        whiteMochaServingLabel.text = "\(whiteMochaSyrupPumps)"
        whiteMochaServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        mochaServingLabel.leftAnchor.constraint(equalTo: mochaLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        mochaServingLabel.centerYAnchor.constraint(equalTo: mochaLabel.centerYAnchor).isActive = true
        mochaServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        mochaServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        mochaServingLabel.text = "\(mochaSyrupPumps)"
        mochaServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        sugarFreeVanillaServingLabel.leftAnchor.constraint(equalTo: sugarFreeVanillaLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        sugarFreeVanillaServingLabel.centerYAnchor.constraint(equalTo: sugarFreeVanillaLabel.centerYAnchor).isActive = true
        sugarFreeVanillaServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        sugarFreeVanillaServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        sugarFreeVanillaServingLabel.text = "\(sugarFreeVanillaSyrupPumps)"
        sugarFreeVanillaServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        sugarFreeCinnamonDolceServingLabel.leftAnchor.constraint(equalTo: sugarFreeCinnamonDolceLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        sugarFreeCinnamonDolceServingLabel.centerYAnchor.constraint(equalTo: sugarFreeCinnamonDolceLabel.centerYAnchor).isActive = true
        sugarFreeCinnamonDolceServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        sugarFreeCinnamonDolceServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        sugarFreeCinnamonDolceServingLabel.text = "\(sugarFreeCinnamonDolceSyrupPumps)"
        sugarFreeCinnamonDolceServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        pumpkinSpiceServingLabel.leftAnchor.constraint(equalTo: pumpkinSpiceLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        pumpkinSpiceServingLabel.centerYAnchor.constraint(equalTo: pumpkinSpiceLabel.centerYAnchor).isActive = true
        pumpkinSpiceServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        pumpkinSpiceServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        pumpkinSpiceServingLabel.text = "\(pumpkinSpiceSyrupPumps)"
        pumpkinSpiceServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        gingerbreadServingLabel.leftAnchor.constraint(equalTo: gingerbreadLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        gingerbreadServingLabel.centerYAnchor.constraint(equalTo: gingerbreadLabel.centerYAnchor).isActive = true
        gingerbreadServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        gingerbreadServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        gingerbreadServingLabel.text = "\(gingerbreadSyrupPumps)"
        gingerbreadServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        caramelBruleeServingLabel.leftAnchor.constraint(equalTo: caramelBruleeLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        caramelBruleeServingLabel.centerYAnchor.constraint(equalTo: caramelBruleeLabel.centerYAnchor).isActive = true
        caramelBruleeServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        caramelBruleeServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        caramelBruleeServingLabel.text = "\(caramelBruleeSyrupPumps)"
        caramelBruleeServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        toastedWhiteMochaServingLabel.leftAnchor.constraint(equalTo: toastedWhiteMochaLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        toastedWhiteMochaServingLabel.centerYAnchor.constraint(equalTo: toastedWhiteMochaLabel.centerYAnchor).isActive = true
        toastedWhiteMochaServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        toastedWhiteMochaServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        toastedWhiteMochaServingLabel.text = "\(toastedWhiteMochaSyrupPumps)"
        toastedWhiteMochaServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(vanillaStepper)
        scrollView.addSubview(caramelStepper)
        scrollView.addSubview(hazelnutStepper)
        scrollView.addSubview(toffeeNutStepper)
        scrollView.addSubview(cinnamonDolceStepper)
        scrollView.addSubview(peppermintStepper)
        scrollView.addSubview(raspberryStepper)
        scrollView.addSubview(classicStepper)
        scrollView.addSubview(cascaraStepper)
        scrollView.addSubview(whiteMochaStepper)
        scrollView.addSubview(mochaStepper)
        scrollView.addSubview(sugarFreeVanillaStepper)
        scrollView.addSubview(sugarFreeCinnamonDolceStepper)
        scrollView.addSubview(pumpkinSpiceStepper)
        scrollView.addSubview(gingerbreadStepper)
        scrollView.addSubview(caramelBruleeStepper)
        scrollView.addSubview(toastedWhiteMochaStepper)
        
        vanillaStepper.leftAnchor.constraint(equalTo: vanillaServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        vanillaStepper.centerYAnchor.constraint(equalTo: vanillaLabel.centerYAnchor).isActive = true
        vanillaStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        vanillaStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        caramelStepper.leftAnchor.constraint(equalTo: caramelServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        caramelStepper.centerYAnchor.constraint(equalTo: caramelLabel.centerYAnchor).isActive = true
        caramelStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        caramelStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        hazelnutStepper.leftAnchor.constraint(equalTo: hazelnutServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        hazelnutStepper.centerYAnchor.constraint(equalTo: hazelnutLabel.centerYAnchor).isActive = true
        hazelnutStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        hazelnutStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        toffeeNutStepper.leftAnchor.constraint(equalTo: toffeeNutServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        toffeeNutStepper.centerYAnchor.constraint(equalTo: toffeeNutLabel.centerYAnchor).isActive = true
        toffeeNutStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        toffeeNutStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        cinnamonDolceStepper.leftAnchor.constraint(equalTo: cinnamonDolceServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        cinnamonDolceStepper.centerYAnchor.constraint(equalTo: cinnamonDolceLabel.centerYAnchor).isActive = true
       cinnamonDolceStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        cinnamonDolceStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        peppermintStepper.leftAnchor.constraint(equalTo: peppermintServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        peppermintStepper.centerYAnchor.constraint(equalTo: peppermintLabel.centerYAnchor).isActive = true
        peppermintStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        peppermintStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        raspberryStepper.leftAnchor.constraint(equalTo: raspberryServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        raspberryStepper.centerYAnchor.constraint(equalTo: raspberryLabel.centerYAnchor).isActive = true
        raspberryStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        raspberryStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        classicStepper.leftAnchor.constraint(equalTo: classicServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        classicStepper.centerYAnchor.constraint(equalTo: classicLabel.centerYAnchor).isActive = true
        classicStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        classicStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        cascaraStepper.leftAnchor.constraint(equalTo: cascaraServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        cascaraStepper.centerYAnchor.constraint(equalTo: cascaraLabel.centerYAnchor).isActive = true
        cascaraStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        cascaraStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        whiteMochaStepper.leftAnchor.constraint(equalTo: whiteMochaServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        whiteMochaStepper.centerYAnchor.constraint(equalTo: whiteMochaLabel.centerYAnchor).isActive = true
        whiteMochaStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        whiteMochaStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        mochaStepper.leftAnchor.constraint(equalTo: mochaServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        mochaStepper.centerYAnchor.constraint(equalTo: mochaLabel.centerYAnchor).isActive = true
        mochaStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        mochaStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        sugarFreeVanillaStepper.leftAnchor.constraint(equalTo: sugarFreeVanillaServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        sugarFreeVanillaStepper.centerYAnchor.constraint(equalTo: sugarFreeVanillaLabel.centerYAnchor).isActive = true
        sugarFreeVanillaStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        sugarFreeVanillaStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        sugarFreeCinnamonDolceStepper.leftAnchor.constraint(equalTo: sugarFreeCinnamonDolceServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        sugarFreeCinnamonDolceStepper.centerYAnchor.constraint(equalTo: sugarFreeCinnamonDolceLabel.centerYAnchor).isActive = true
        sugarFreeCinnamonDolceStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        sugarFreeCinnamonDolceStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        pumpkinSpiceStepper.leftAnchor.constraint(equalTo: pumpkinSpiceServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        pumpkinSpiceStepper.centerYAnchor.constraint(equalTo: pumpkinSpiceLabel.centerYAnchor).isActive = true
        pumpkinSpiceStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        pumpkinSpiceStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        gingerbreadStepper.leftAnchor.constraint(equalTo: gingerbreadServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        gingerbreadStepper.centerYAnchor.constraint(equalTo: gingerbreadLabel.centerYAnchor).isActive = true
        gingerbreadStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        gingerbreadStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        caramelBruleeStepper.leftAnchor.constraint(equalTo: caramelBruleeServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        caramelBruleeStepper.centerYAnchor.constraint(equalTo: caramelBruleeLabel.centerYAnchor).isActive = true
        caramelBruleeStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        caramelBruleeStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        toastedWhiteMochaStepper.leftAnchor.constraint(equalTo: toastedWhiteMochaServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        toastedWhiteMochaStepper.centerYAnchor.constraint(equalTo: toastedWhiteMochaLabel.centerYAnchor).isActive = true
        toastedWhiteMochaStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        toastedWhiteMochaStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
    }
    
    @objc func handleBack() {
        noSyrups = true
        UserDefaults.standard.set(true, forKey: "noSyrups")
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
        UserDefaults.standard.set(0, forKey: "raspberrySyrupPumps")
        classicSyrupPumps = 0
        UserDefaults.standard.set(0, forKey: "classicSyrupPumps")
        cascaraSyrupPumps = 0
        UserDefaults.standard.set(0, forKey: "cascaraSyrupsPumps")
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
        UserDefaults.standard.set(0, forKey: "caramelBruleeSyrupPumps")
        toastedWhiteMochaSyrupPumps = 0
        UserDefaults.standard.set(0, forKey: "toastedWhiteMochaSyrupPumps")
        
        self.dismiss(animated: true) {}
    }
    
    @objc func handleNext() {
        vanillaSyrupPumps = Int(vanillaServingLabel.text!)!
        UserDefaults.standard.set(Int(vanillaServingLabel.text!)!, forKey: "vanillaSyrupPumps")
        caramelSyrupPumps = Int(caramelServingLabel.text!)!
        UserDefaults.standard.set(Int(caramelServingLabel.text!)!, forKey: "caramelSyrupPumps")
        hazelnutSyrupPumps = Int(hazelnutServingLabel.text!)!
        UserDefaults.standard.set(Int(hazelnutServingLabel.text!)!, forKey: "hazelnutSyrupPumps")
        toffeeNutSyrupPumps = Int(toffeeNutServingLabel.text!)!
        UserDefaults.standard.set(Int(toffeeNutServingLabel.text!)!, forKey: "toffeeNutSyrupPumps")
        cinnamonDolceSyrupPumps = Int(cinnamonDolceServingLabel.text!)!
        UserDefaults.standard.set(Int(cinnamonDolceServingLabel.text!)!, forKey: "cinnamonDolceSyrupPumps")
        peppermintSyrupPumps = Int(peppermintServingLabel.text!)!
        UserDefaults.standard.set(Int(peppermintServingLabel.text!)!, forKey: "peppermintSyrupPumps")
        raspberrySyrupPumps = Int(raspberryServingLabel.text!)!
        UserDefaults.standard.set(Int(raspberryServingLabel.text!)!, forKey: "raspberrySyrupPumps")
        classicSyrupPumps = Int(classicServingLabel.text!)!
        UserDefaults.standard.set(Int(classicServingLabel.text!)!, forKey: "classicSyrupPumps")
        cascaraSyrupPumps = Int(cascaraServingLabel.text!)!
        UserDefaults.standard.set(Int(cascaraServingLabel.text!)!, forKey: "cascaraSyrupPumps")
        whiteMochaSyrupPumps = Int(whiteMochaServingLabel.text!)!
        UserDefaults.standard.set(Int(whiteMochaServingLabel.text!)!, forKey: "whiteMochaSyrupPumps")
        mochaSyrupPumps = Int(mochaServingLabel.text!)!
        UserDefaults.standard.set(Int(mochaServingLabel.text!)!, forKey: "mochaSyrupPumps")
        sugarFreeVanillaSyrupPumps = Int(sugarFreeVanillaServingLabel.text!)!
        UserDefaults.standard.set(Int(sugarFreeVanillaServingLabel.text!)!, forKey: "sugarFreeVanillaSyrupPumps")
        sugarFreeCinnamonDolceSyrupPumps = Int(sugarFreeCinnamonDolceServingLabel.text!)!
        UserDefaults.standard.set(Int(sugarFreeCinnamonDolceServingLabel.text!)!, forKey: "sugarFreeCinnamonDolceSyrupPumps")
        pumpkinSpiceSyrupPumps = Int(pumpkinSpiceServingLabel.text!)!
        UserDefaults.standard.set(Int(pumpkinSpiceServingLabel.text!)!, forKey: "pumpkinSpiceSyrupPumps")
        gingerbreadSyrupPumps = Int(gingerbreadServingLabel.text!)!
        UserDefaults.standard.set(Int(gingerbreadServingLabel.text!)!, forKey: "gingerbreadSyrupPumps")
        caramelBruleeSyrupPumps = Int(caramelBruleeServingLabel.text!)!
        UserDefaults.standard.set(Int(caramelBruleeServingLabel.text!)!, forKey: "caramelBruleeSyrupPumps")
        toastedWhiteMochaSyrupPumps = Int(toastedWhiteMochaServingLabel.text!)!
        UserDefaults.standard.set(Int(toastedWhiteMochaServingLabel.text!)!, forKey: "toastedWhiteMochaSyrupPumps")
        UserDefaults.standard.synchronize()
        
        if vanillaSyrupPumps > 0 || caramelSyrupPumps > 0 || hazelnutSyrupPumps > 0 || toffeeNutSyrupPumps > 0 || cinnamonDolceSyrupPumps > 0 || peppermintSyrupPumps > 0 || raspberrySyrupPumps > 0 || classicSyrupPumps > 0 || cascaraSyrupPumps > 0 || whiteMochaSyrupPumps > 0 || mochaSyrupPumps > 0 || sugarFreeVanillaSyrupPumps > 0 || sugarFreeCinnamonDolceSyrupPumps > 0 || pumpkinSpiceSyrupPumps > 0 || gingerbreadSyrupPumps > 0 || caramelBruleeSyrupPumps > 0 || toastedWhiteMochaSyrupPumps > 0 {
            noSyrups = false
            UserDefaults.standard.set(false, forKey: "noSyrups")
            UserDefaults.standard.synchronize()
        }
        
        self.present(CustomCoffeeExtras(), animated: true) {}
    }
    
    @objc func handleVanillaStepper(sender: UIStepper!) {
        vanillaSyrupPumps = Int(sender.value)
        vanillaServingLabel.text = "\(vanillaSyrupPumps)"
    }
    
    @objc func handleCaramelStepper(sender: UIStepper!) {
        caramelSyrupPumps = Int(sender.value)
        caramelServingLabel.text = "\(caramelSyrupPumps)"
    }
    
    @objc func handleHazelnutStepper(sender: UIStepper!) {
        hazelnutSyrupPumps = Int(sender.value)
        hazelnutServingLabel.text = "\(hazelnutSyrupPumps)"
    }

    @objc func handleToffeeNutStepper(sender: UIStepper!) {
        toffeeNutSyrupPumps = Int(sender.value)
        toffeeNutServingLabel.text = "\(toffeeNutSyrupPumps)"
    }
    
    @objc func handleCinnamonDolceStepper(sender: UIStepper!) {
        cinnamonDolceSyrupPumps = Int(sender.value)
        cinnamonDolceServingLabel.text = "\(cinnamonDolceSyrupPumps)"
    }
    
    @objc func handlePeppermintStepper(sender: UIStepper!) {
        peppermintSyrupPumps = Int(sender.value)
        peppermintServingLabel.text = "\(peppermintSyrupPumps)"
    }
    
    @objc func handleRaspberryStepper(sender: UIStepper!) {
        raspberrySyrupPumps = Int(sender.value)
        raspberryServingLabel.text = "\(raspberrySyrupPumps)"
    }
    
    @objc func handleClassicStepper(sender: UIStepper!) {
        classicSyrupPumps = Int(sender.value)
        classicServingLabel.text = "\(classicSyrupPumps)"
    }
    
    @objc func handleCascaraStepper(sender: UIStepper!) {
        cascaraSyrupPumps = Int(sender.value)
        cascaraServingLabel.text = "\(cascaraSyrupPumps)"
    }
    
    @objc func handleWhiteMochaStepper(sender: UIStepper!) {
        whiteMochaSyrupPumps = Int(sender.value)
        caramelServingLabel.text = "\(caramelSyrupPumps)"
    }
    
    @objc func handleMochaStepper(sender: UIStepper!) {
        mochaSyrupPumps = Int(sender.value)
        mochaServingLabel.text = "\(mochaSyrupPumps)"
    }
    
    @objc func handleSugarFreeVanillaStepper(sender: UIStepper!) {
        sugarFreeVanillaSyrupPumps = Int(sender.value)
        sugarFreeVanillaServingLabel.text = "\(sugarFreeVanillaSyrupPumps)"
    }
    
    @objc func handleSugarFreeCinnamonDolceStepper(sender: UIStepper!) {
        sugarFreeCinnamonDolceSyrupPumps = Int(sender.value)
        sugarFreeCinnamonDolceServingLabel.text = "\(sugarFreeCinnamonDolceSyrupPumps)"
    }
    
    @objc func handlePumpkinSpiceStepper(sender: UIStepper!) {
        pumpkinSpiceSyrupPumps = Int(sender.value)
        pumpkinSpiceServingLabel.text = "\(pumpkinSpiceSyrupPumps)"
    }
    
    @objc func handleGingerbreadStepper(sender: UIStepper!) {
        gingerbreadSyrupPumps = Int(sender.value)
        gingerbreadServingLabel.text = "\(gingerbreadSyrupPumps)"
    }
    
    @objc func handleCaramelBruleeStepper(sender: UIStepper!) {
        caramelBruleeSyrupPumps = Int(sender.value)
        caramelBruleeServingLabel.text = "\(caramelBruleeSyrupPumps)"
    }
    
    @objc func handleToastedWhiteMochaStepper(sender: UIStepper!) {
        toastedWhiteMochaSyrupPumps = Int(sender.value)
        toastedWhiteMochaServingLabel.text = "\(toastedWhiteMochaSyrupPumps)"
    }
    
}
