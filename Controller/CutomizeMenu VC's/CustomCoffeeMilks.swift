//
//  CustomCoffeeMilks.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 2/7/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class CustomCoffeeMilks: UIViewController {
    
    var wholeMilkServing = UserDefaults.standard.integer(forKey: "wholeMilkServing")
    var twoPercentMilkServing = UserDefaults.standard.integer(forKey: "twoPercentMilkServing")
    var onePercentMilkServing = UserDefaults.standard.integer(forKey: "onePercentMilkServing")
    var nonFatSkimMilkServing = UserDefaults.standard.integer(forKey: "nonFatSkimMilkServing")
    var halfAndHalfServing = UserDefaults.standard.integer(forKey: "halfAndHalfServing")
    var heavyCreamServing = UserDefaults.standard.integer(forKey: "heavyCreamServing")
    var coconutMilkServing = UserDefaults.standard.integer(forKey: "coconutMilkServing")
    var  almondMilkServing = UserDefaults.standard.integer(forKey: "almondMilkServing")
    var soyMilkServing = UserDefaults.standard.integer(forKey: "soyMilkServing")
    
    var noMilks = UserDefaults.standard.bool(forKey: "noMilks")
    
    let milksTitle: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Milks"
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
    
    let wholeMilkLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Whole Milk"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let twoPercentMilkLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "2% Milk"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let onePercentMilkLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1% Milk"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let nonfatMilkLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Skim Milk"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let halfAndHalfLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Half and Half"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let heavyCreamLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Heavy Cream"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let coconutMilkLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Coconut Milk"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let almondMilkLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Almond Milk"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let soyMilkLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Soy Milk"
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
        label.text = "2oz = 1 Serving"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let wholeMilkCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "40 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let wholeMilkProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "2g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let wholeMilkCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "3g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let wholeMilkFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "2g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let wholeMilkSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "3g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let twoPercentMilkCaloriesLabel: UILabel = {
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
    
    let twoPercentMilkProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "2g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let twoPercentMilkCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "3g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let twoPercentMilkFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1.3g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let twoPercentMilkSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "3g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let onePercentMilkCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "25 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let onePercentMilkProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "2g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let onePercentMilkCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "3g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let onePercentMilkFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ".75g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let onePercentMilkSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "3g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let nonfatMilkCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "20 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let nonfatMilkProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "2g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let nonfatMilkCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "3g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let nonfatMilkFatsLabel: UILabel = {
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
    
    let nonfatMilkSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "3g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let halfAndHalfCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "35 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let halfAndHalfProteinLabel: UILabel = {
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
    
    let halfAndHalfCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let halfAndHalfFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "3g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let halfAndHalfSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let heavyCreamCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "90 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let heavyCreamProteinLabel: UILabel = {
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
    
    let heavyCreamCarbsLabel: UILabel = {
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
    
    let heavyCreamFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "9g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let heavyCreamSugarLabel: UILabel = {
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
    
    let coconutMilkCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "20 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let coconutMilkProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ".25g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let coconutMilkCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let coconutMilkFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1.3g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let coconutMilkSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let almondMilkCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "15 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let almondMilkProteinLabel: UILabel = {
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
    
    let almondMilkCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1.3g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let almondMilkFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let almondMilkSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ".75g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let soyMilkCaloriesLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "40 Calories"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let soyMilkProteinLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1.8g Protein"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let soyMilkCarbsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "4g Carbs"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let soyMilkFatsLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1g Fats"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let soyMilkSugarLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "3.1g Sugar"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    let wholeMilkServingLabel: UILabel = {
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
    
    let twoPercentMilkServingLabel: UILabel = {
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
    
    let onePercentMilkServingLabel: UILabel = {
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
    
    let nonfatMilkServingLabel: UILabel = {
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
    
    let halfAndHalfServingLabel: UILabel = {
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
    
    let heavyCreamServingLabel: UILabel = {
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
    
    let coconutMilkServingLabel: UILabel = {
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
    
    let almondMilkServingLabel: UILabel = {
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
    
    let soyMilkServingLabel: UILabel = {
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
    
    let wholeMilkStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleWholeMilkStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let twoPercentMilkStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleTwoPercentMilkStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let onePercentMilkStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleOnePercentMilkStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let nonfatMilkStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleNonfatMilkStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let halfAndHalfStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleHalfAndHalfStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let heavyCreamStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleHeavyCreamStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let coconutMilkStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleCoconutMilkStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let almondMilkStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleAlmondMilkStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let soyMilkStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleSoyMilkStepper(sender:)), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    // add label boxes for the serving amounts
    // add steppers
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupScrollView()
    }
    
    private func setupView() {
        view.backgroundColor = UIColor(red: 255/255, green: 218/255, blue: 185/255, alpha: 1)
        
        scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height * 4.075)
        
        view.addSubview(milksTitle)
        view.addSubview(backButton)
        view.addSubview(scrollView)
        view.addSubview(nextButton)
        
        milksTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        milksTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.height * 0.05).isActive = true
        milksTitle.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        milksTitle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        milksTitle.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.075)
        
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
        scrollView.addSubview(wholeMilkLabel)
        scrollView.addSubview(twoPercentMilkLabel)
        scrollView.addSubview(onePercentMilkLabel)
        scrollView.addSubview(nonfatMilkLabel)
        scrollView.addSubview(halfAndHalfLabel)
        scrollView.addSubview(heavyCreamLabel)
        scrollView.addSubview(coconutMilkLabel)
        scrollView.addSubview(almondMilkLabel)
        scrollView.addSubview(soyMilkLabel)
        
        servingSizeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        servingSizeLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: view.frame.height * 0.05).isActive = true
        servingSizeLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        servingSizeLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        servingSizeLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        wholeMilkLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        wholeMilkLabel.topAnchor.constraint(equalTo: servingSizeLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        wholeMilkLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        wholeMilkLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        wholeMilkLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(wholeMilkCaloriesLabel)
        scrollView.addSubview(wholeMilkProteinLabel)
        scrollView.addSubview(wholeMilkCarbsLabel)
        scrollView.addSubview(wholeMilkFatsLabel)
        scrollView.addSubview(wholeMilkSugarLabel)
        
        wholeMilkCaloriesLabel.centerXAnchor.constraint(equalTo: wholeMilkLabel.centerXAnchor).isActive = true
        wholeMilkCaloriesLabel.topAnchor.constraint(equalTo: wholeMilkLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        wholeMilkCaloriesLabel.widthAnchor.constraint(equalTo: wholeMilkLabel.widthAnchor).isActive = true
        wholeMilkCaloriesLabel.heightAnchor.constraint(equalTo: wholeMilkLabel.heightAnchor, multiplier: 1).isActive = true
        wholeMilkCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        wholeMilkProteinLabel.centerXAnchor.constraint(equalTo: wholeMilkCaloriesLabel.centerXAnchor).isActive = true
        wholeMilkProteinLabel.topAnchor.constraint(equalTo: wholeMilkCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        wholeMilkProteinLabel.widthAnchor.constraint(equalTo: wholeMilkLabel.widthAnchor).isActive = true
        wholeMilkProteinLabel.heightAnchor.constraint(equalTo: wholeMilkLabel.heightAnchor, multiplier: 1).isActive = true
        wholeMilkProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        wholeMilkCarbsLabel.centerXAnchor.constraint(equalTo: wholeMilkLabel.centerXAnchor).isActive = true
        wholeMilkCarbsLabel.topAnchor.constraint(equalTo: wholeMilkProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        wholeMilkCarbsLabel.widthAnchor.constraint(equalTo: wholeMilkLabel.widthAnchor).isActive = true
        wholeMilkCarbsLabel.heightAnchor.constraint(equalTo: wholeMilkLabel.heightAnchor, multiplier: 0.75).isActive = true
        wholeMilkCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        wholeMilkFatsLabel.centerXAnchor.constraint(equalTo: wholeMilkLabel.centerXAnchor).isActive = true
        wholeMilkFatsLabel.topAnchor.constraint(equalTo: wholeMilkCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        wholeMilkFatsLabel.widthAnchor.constraint(equalTo: wholeMilkLabel.widthAnchor).isActive = true
        wholeMilkFatsLabel.heightAnchor.constraint(equalTo: wholeMilkLabel.heightAnchor, multiplier: 0.75).isActive = true
        wholeMilkFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        wholeMilkSugarLabel.centerXAnchor.constraint(equalTo: wholeMilkLabel.centerXAnchor).isActive = true
        wholeMilkSugarLabel.topAnchor.constraint(equalTo: wholeMilkFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        wholeMilkSugarLabel.widthAnchor.constraint(equalTo: wholeMilkLabel.widthAnchor).isActive = true
        wholeMilkSugarLabel.heightAnchor.constraint(equalTo: wholeMilkLabel.heightAnchor, multiplier: 0.75).isActive = true
        wholeMilkSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        twoPercentMilkLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        twoPercentMilkLabel.topAnchor.constraint(equalTo: wholeMilkSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        twoPercentMilkLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        twoPercentMilkLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        twoPercentMilkLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(twoPercentMilkCaloriesLabel)
        scrollView.addSubview(twoPercentMilkProteinLabel)
        scrollView.addSubview(twoPercentMilkCarbsLabel)
        scrollView.addSubview(twoPercentMilkFatsLabel)
        scrollView.addSubview(twoPercentMilkSugarLabel)
        
        twoPercentMilkCaloriesLabel.centerXAnchor.constraint(equalTo: twoPercentMilkLabel.centerXAnchor).isActive = true
        twoPercentMilkCaloriesLabel.topAnchor.constraint(equalTo: twoPercentMilkLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        twoPercentMilkCaloriesLabel.widthAnchor.constraint(equalTo: twoPercentMilkLabel.widthAnchor).isActive = true
        twoPercentMilkCaloriesLabel.heightAnchor.constraint(equalTo: twoPercentMilkLabel.heightAnchor, multiplier: 1).isActive = true
        twoPercentMilkCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        twoPercentMilkProteinLabel.centerXAnchor.constraint(equalTo: twoPercentMilkCaloriesLabel.centerXAnchor).isActive = true
        twoPercentMilkProteinLabel.topAnchor.constraint(equalTo: twoPercentMilkCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        twoPercentMilkProteinLabel.widthAnchor.constraint(equalTo: twoPercentMilkLabel.widthAnchor).isActive = true
        twoPercentMilkProteinLabel.heightAnchor.constraint(equalTo: twoPercentMilkLabel.heightAnchor, multiplier: 1).isActive = true
        twoPercentMilkProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        twoPercentMilkCarbsLabel.centerXAnchor.constraint(equalTo: twoPercentMilkLabel.centerXAnchor).isActive = true
        twoPercentMilkCarbsLabel.topAnchor.constraint(equalTo: twoPercentMilkProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        twoPercentMilkCarbsLabel.widthAnchor.constraint(equalTo: twoPercentMilkLabel.widthAnchor).isActive = true
        twoPercentMilkCarbsLabel.heightAnchor.constraint(equalTo: twoPercentMilkLabel.heightAnchor, multiplier: 0.75).isActive = true
        twoPercentMilkCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        twoPercentMilkFatsLabel.centerXAnchor.constraint(equalTo: twoPercentMilkLabel.centerXAnchor).isActive = true
        twoPercentMilkFatsLabel.topAnchor.constraint(equalTo: twoPercentMilkCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        twoPercentMilkFatsLabel.widthAnchor.constraint(equalTo: twoPercentMilkLabel.widthAnchor).isActive = true
        twoPercentMilkFatsLabel.heightAnchor.constraint(equalTo: twoPercentMilkLabel.heightAnchor, multiplier: 0.75).isActive = true
        twoPercentMilkFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        twoPercentMilkSugarLabel.centerXAnchor.constraint(equalTo: twoPercentMilkLabel.centerXAnchor).isActive = true
        twoPercentMilkSugarLabel.topAnchor.constraint(equalTo: twoPercentMilkFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        twoPercentMilkSugarLabel.widthAnchor.constraint(equalTo: twoPercentMilkLabel.widthAnchor).isActive = true
        twoPercentMilkSugarLabel.heightAnchor.constraint(equalTo: twoPercentMilkLabel.heightAnchor, multiplier: 0.75).isActive = true
        twoPercentMilkSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        onePercentMilkLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        onePercentMilkLabel.topAnchor.constraint(equalTo: twoPercentMilkSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        onePercentMilkLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        onePercentMilkLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        onePercentMilkLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(onePercentMilkCaloriesLabel)
        scrollView.addSubview(onePercentMilkProteinLabel)
        scrollView.addSubview(onePercentMilkCarbsLabel)
        scrollView.addSubview(onePercentMilkFatsLabel)
        scrollView.addSubview(onePercentMilkSugarLabel)
        
        onePercentMilkCaloriesLabel.centerXAnchor.constraint(equalTo: onePercentMilkLabel.centerXAnchor).isActive = true
        onePercentMilkCaloriesLabel.topAnchor.constraint(equalTo: onePercentMilkLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        onePercentMilkCaloriesLabel.widthAnchor.constraint(equalTo: onePercentMilkLabel.widthAnchor).isActive = true
        onePercentMilkCaloriesLabel.heightAnchor.constraint(equalTo: onePercentMilkLabel.heightAnchor, multiplier: 1).isActive = true
        onePercentMilkCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        onePercentMilkProteinLabel.centerXAnchor.constraint(equalTo: onePercentMilkCaloriesLabel.centerXAnchor).isActive = true
        onePercentMilkProteinLabel.topAnchor.constraint(equalTo: onePercentMilkCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        onePercentMilkProteinLabel.widthAnchor.constraint(equalTo: onePercentMilkLabel.widthAnchor).isActive = true
        onePercentMilkProteinLabel.heightAnchor.constraint(equalTo: onePercentMilkLabel.heightAnchor, multiplier: 1).isActive = true
        onePercentMilkProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        onePercentMilkCarbsLabel.centerXAnchor.constraint(equalTo: onePercentMilkLabel.centerXAnchor).isActive = true
        onePercentMilkCarbsLabel.topAnchor.constraint(equalTo: onePercentMilkProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        onePercentMilkCarbsLabel.widthAnchor.constraint(equalTo: onePercentMilkLabel.widthAnchor).isActive = true
        onePercentMilkCarbsLabel.heightAnchor.constraint(equalTo: onePercentMilkLabel.heightAnchor, multiplier: 0.75).isActive = true
        onePercentMilkCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        onePercentMilkFatsLabel.centerXAnchor.constraint(equalTo: onePercentMilkLabel.centerXAnchor).isActive = true
        onePercentMilkFatsLabel.topAnchor.constraint(equalTo: onePercentMilkCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        onePercentMilkFatsLabel.widthAnchor.constraint(equalTo: onePercentMilkLabel.widthAnchor).isActive = true
        onePercentMilkFatsLabel.heightAnchor.constraint(equalTo: onePercentMilkLabel.heightAnchor, multiplier: 0.75).isActive = true
        onePercentMilkFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        onePercentMilkSugarLabel.centerXAnchor.constraint(equalTo: onePercentMilkLabel.centerXAnchor).isActive = true
        onePercentMilkSugarLabel.topAnchor.constraint(equalTo: onePercentMilkFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        onePercentMilkSugarLabel.widthAnchor.constraint(equalTo: onePercentMilkLabel.widthAnchor).isActive = true
        onePercentMilkSugarLabel.heightAnchor.constraint(equalTo: onePercentMilkLabel.heightAnchor, multiplier: 0.75).isActive = true
        onePercentMilkSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        nonfatMilkLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        nonfatMilkLabel.topAnchor.constraint(equalTo: onePercentMilkSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        nonfatMilkLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        nonfatMilkLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        nonfatMilkLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(nonfatMilkCaloriesLabel)
        scrollView.addSubview(nonfatMilkProteinLabel)
        scrollView.addSubview(nonfatMilkCarbsLabel)
        scrollView.addSubview(nonfatMilkFatsLabel)
        scrollView.addSubview(nonfatMilkSugarLabel)
        
        nonfatMilkCaloriesLabel.centerXAnchor.constraint(equalTo: nonfatMilkLabel.centerXAnchor).isActive = true
        nonfatMilkCaloriesLabel.topAnchor.constraint(equalTo: nonfatMilkLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        nonfatMilkCaloriesLabel.widthAnchor.constraint(equalTo: nonfatMilkLabel.widthAnchor).isActive = true
        nonfatMilkCaloriesLabel.heightAnchor.constraint(equalTo: nonfatMilkLabel.heightAnchor, multiplier: 1).isActive = true
        nonfatMilkCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        nonfatMilkProteinLabel.centerXAnchor.constraint(equalTo: nonfatMilkCaloriesLabel.centerXAnchor).isActive = true
        nonfatMilkProteinLabel.topAnchor.constraint(equalTo: nonfatMilkCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        nonfatMilkProteinLabel.widthAnchor.constraint(equalTo: nonfatMilkLabel.widthAnchor).isActive = true
        nonfatMilkProteinLabel.heightAnchor.constraint(equalTo: nonfatMilkLabel.heightAnchor, multiplier: 1).isActive = true
        nonfatMilkProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        nonfatMilkCarbsLabel.centerXAnchor.constraint(equalTo: nonfatMilkLabel.centerXAnchor).isActive = true
        nonfatMilkCarbsLabel.topAnchor.constraint(equalTo: nonfatMilkProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        nonfatMilkCarbsLabel.widthAnchor.constraint(equalTo: nonfatMilkLabel.widthAnchor).isActive = true
        nonfatMilkCarbsLabel.heightAnchor.constraint(equalTo: nonfatMilkLabel.heightAnchor, multiplier: 0.75).isActive = true
        nonfatMilkCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        nonfatMilkFatsLabel.centerXAnchor.constraint(equalTo: nonfatMilkLabel.centerXAnchor).isActive = true
        nonfatMilkFatsLabel.topAnchor.constraint(equalTo: nonfatMilkCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        nonfatMilkFatsLabel.widthAnchor.constraint(equalTo: nonfatMilkLabel.widthAnchor).isActive = true
        nonfatMilkFatsLabel.heightAnchor.constraint(equalTo: nonfatMilkLabel.heightAnchor, multiplier: 0.75).isActive = true
        nonfatMilkFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        nonfatMilkSugarLabel.centerXAnchor.constraint(equalTo: nonfatMilkLabel.centerXAnchor).isActive = true
        nonfatMilkSugarLabel.topAnchor.constraint(equalTo: nonfatMilkFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        nonfatMilkSugarLabel.widthAnchor.constraint(equalTo: nonfatMilkLabel.widthAnchor).isActive = true
        nonfatMilkSugarLabel.heightAnchor.constraint(equalTo: nonfatMilkLabel.heightAnchor, multiplier: 0.75).isActive = true
        nonfatMilkSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        halfAndHalfLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        halfAndHalfLabel.topAnchor.constraint(equalTo: nonfatMilkSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        halfAndHalfLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        halfAndHalfLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        halfAndHalfLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(halfAndHalfCaloriesLabel)
        scrollView.addSubview(halfAndHalfProteinLabel)
        scrollView.addSubview(halfAndHalfCarbsLabel)
        scrollView.addSubview(halfAndHalfFatsLabel)
        scrollView.addSubview(halfAndHalfSugarLabel)
        
        halfAndHalfCaloriesLabel.centerXAnchor.constraint(equalTo: halfAndHalfLabel.centerXAnchor).isActive = true
        halfAndHalfCaloriesLabel.topAnchor.constraint(equalTo: halfAndHalfLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        halfAndHalfCaloriesLabel.widthAnchor.constraint(equalTo: halfAndHalfLabel.widthAnchor).isActive = true
        halfAndHalfCaloriesLabel.heightAnchor.constraint(equalTo: halfAndHalfLabel.heightAnchor, multiplier: 1).isActive = true
        halfAndHalfCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        halfAndHalfProteinLabel.centerXAnchor.constraint(equalTo: halfAndHalfCaloriesLabel.centerXAnchor).isActive = true
        halfAndHalfProteinLabel.topAnchor.constraint(equalTo: halfAndHalfCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        halfAndHalfProteinLabel.widthAnchor.constraint(equalTo: halfAndHalfLabel.widthAnchor).isActive = true
        halfAndHalfProteinLabel.heightAnchor.constraint(equalTo: halfAndHalfLabel.heightAnchor, multiplier: 1).isActive = true
        halfAndHalfProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        halfAndHalfCarbsLabel.centerXAnchor.constraint(equalTo: halfAndHalfLabel.centerXAnchor).isActive = true
        halfAndHalfCarbsLabel.topAnchor.constraint(equalTo: halfAndHalfProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        halfAndHalfCarbsLabel.widthAnchor.constraint(equalTo: halfAndHalfLabel.widthAnchor).isActive = true
        halfAndHalfCarbsLabel.heightAnchor.constraint(equalTo: halfAndHalfLabel.heightAnchor, multiplier: 0.75).isActive = true
        halfAndHalfCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        halfAndHalfFatsLabel.centerXAnchor.constraint(equalTo: halfAndHalfLabel.centerXAnchor).isActive = true
        halfAndHalfFatsLabel.topAnchor.constraint(equalTo: halfAndHalfCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        halfAndHalfFatsLabel.widthAnchor.constraint(equalTo: halfAndHalfLabel.widthAnchor).isActive = true
        halfAndHalfFatsLabel.heightAnchor.constraint(equalTo: halfAndHalfLabel.heightAnchor, multiplier: 0.75).isActive = true
        halfAndHalfFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        halfAndHalfSugarLabel.centerXAnchor.constraint(equalTo: halfAndHalfLabel.centerXAnchor).isActive = true
        halfAndHalfSugarLabel.topAnchor.constraint(equalTo: halfAndHalfFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        halfAndHalfSugarLabel.widthAnchor.constraint(equalTo: halfAndHalfLabel.widthAnchor).isActive = true
        halfAndHalfSugarLabel.heightAnchor.constraint(equalTo: halfAndHalfLabel.heightAnchor, multiplier: 0.75).isActive = true
        halfAndHalfSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        heavyCreamLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        heavyCreamLabel.topAnchor.constraint(equalTo: halfAndHalfSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        heavyCreamLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        heavyCreamLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        heavyCreamLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(heavyCreamCaloriesLabel)
        scrollView.addSubview(heavyCreamProteinLabel)
        scrollView.addSubview(heavyCreamCarbsLabel)
        scrollView.addSubview(heavyCreamFatsLabel)
        scrollView.addSubview(heavyCreamSugarLabel)
        
        heavyCreamCaloriesLabel.centerXAnchor.constraint(equalTo: heavyCreamLabel.centerXAnchor).isActive = true
        heavyCreamCaloriesLabel.topAnchor.constraint(equalTo: heavyCreamLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        heavyCreamCaloriesLabel.widthAnchor.constraint(equalTo: heavyCreamLabel.widthAnchor).isActive = true
        heavyCreamCaloriesLabel.heightAnchor.constraint(equalTo: heavyCreamLabel.heightAnchor, multiplier: 1).isActive = true
        heavyCreamCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        heavyCreamProteinLabel.centerXAnchor.constraint(equalTo: heavyCreamCaloriesLabel.centerXAnchor).isActive = true
        heavyCreamProteinLabel.topAnchor.constraint(equalTo: heavyCreamCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        heavyCreamProteinLabel.widthAnchor.constraint(equalTo: heavyCreamLabel.widthAnchor).isActive = true
        heavyCreamProteinLabel.heightAnchor.constraint(equalTo: heavyCreamLabel.heightAnchor, multiplier: 1).isActive = true
        heavyCreamProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        heavyCreamCarbsLabel.centerXAnchor.constraint(equalTo: heavyCreamLabel.centerXAnchor).isActive = true
        heavyCreamCarbsLabel.topAnchor.constraint(equalTo: heavyCreamProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        heavyCreamCarbsLabel.widthAnchor.constraint(equalTo: heavyCreamLabel.widthAnchor).isActive = true
        heavyCreamCarbsLabel.heightAnchor.constraint(equalTo: heavyCreamLabel.heightAnchor, multiplier: 0.75).isActive = true
        heavyCreamCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        heavyCreamFatsLabel.centerXAnchor.constraint(equalTo: heavyCreamLabel.centerXAnchor).isActive = true
        heavyCreamFatsLabel.topAnchor.constraint(equalTo: heavyCreamCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        heavyCreamFatsLabel.widthAnchor.constraint(equalTo: heavyCreamLabel.widthAnchor).isActive = true
        heavyCreamFatsLabel.heightAnchor.constraint(equalTo: heavyCreamLabel.heightAnchor, multiplier: 0.75).isActive = true
        heavyCreamFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        heavyCreamSugarLabel.centerXAnchor.constraint(equalTo: heavyCreamLabel.centerXAnchor).isActive = true
        heavyCreamSugarLabel.topAnchor.constraint(equalTo: heavyCreamFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        heavyCreamSugarLabel.widthAnchor.constraint(equalTo: heavyCreamLabel.widthAnchor).isActive = true
        heavyCreamSugarLabel.heightAnchor.constraint(equalTo: heavyCreamLabel.heightAnchor, multiplier: 0.75).isActive = true
        heavyCreamSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        coconutMilkLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        coconutMilkLabel.topAnchor.constraint(equalTo: heavyCreamSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        coconutMilkLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        coconutMilkLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        coconutMilkLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(coconutMilkCaloriesLabel)
        scrollView.addSubview(coconutMilkProteinLabel)
        scrollView.addSubview(coconutMilkCarbsLabel)
        scrollView.addSubview(coconutMilkFatsLabel)
        scrollView.addSubview(coconutMilkSugarLabel)
        
        coconutMilkCaloriesLabel.centerXAnchor.constraint(equalTo: coconutMilkLabel.centerXAnchor).isActive = true
        coconutMilkCaloriesLabel.topAnchor.constraint(equalTo: coconutMilkLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        coconutMilkCaloriesLabel.widthAnchor.constraint(equalTo: coconutMilkLabel.widthAnchor).isActive = true
        coconutMilkCaloriesLabel.heightAnchor.constraint(equalTo: coconutMilkLabel.heightAnchor, multiplier: 1).isActive = true
        coconutMilkCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        coconutMilkProteinLabel.centerXAnchor.constraint(equalTo: coconutMilkCaloriesLabel.centerXAnchor).isActive = true
        coconutMilkProteinLabel.topAnchor.constraint(equalTo: coconutMilkCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        coconutMilkProteinLabel.widthAnchor.constraint(equalTo: coconutMilkLabel.widthAnchor).isActive = true
        coconutMilkProteinLabel.heightAnchor.constraint(equalTo: coconutMilkLabel.heightAnchor, multiplier: 1).isActive = true
        coconutMilkProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        coconutMilkCarbsLabel.centerXAnchor.constraint(equalTo: coconutMilkLabel.centerXAnchor).isActive = true
        coconutMilkCarbsLabel.topAnchor.constraint(equalTo: coconutMilkProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        coconutMilkCarbsLabel.widthAnchor.constraint(equalTo: coconutMilkLabel.widthAnchor).isActive = true
        coconutMilkCarbsLabel.heightAnchor.constraint(equalTo: coconutMilkLabel.heightAnchor, multiplier: 0.75).isActive = true
        coconutMilkCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        coconutMilkFatsLabel.centerXAnchor.constraint(equalTo: coconutMilkLabel.centerXAnchor).isActive = true
        coconutMilkFatsLabel.topAnchor.constraint(equalTo: coconutMilkCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        coconutMilkFatsLabel.widthAnchor.constraint(equalTo: coconutMilkLabel.widthAnchor).isActive = true
        coconutMilkFatsLabel.heightAnchor.constraint(equalTo: coconutMilkLabel.heightAnchor, multiplier: 0.75).isActive = true
        coconutMilkFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        coconutMilkSugarLabel.centerXAnchor.constraint(equalTo: coconutMilkLabel.centerXAnchor).isActive = true
        coconutMilkSugarLabel.topAnchor.constraint(equalTo: coconutMilkFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        coconutMilkSugarLabel.widthAnchor.constraint(equalTo: coconutMilkLabel.widthAnchor).isActive = true
        coconutMilkSugarLabel.heightAnchor.constraint(equalTo: coconutMilkLabel.heightAnchor, multiplier: 0.75).isActive = true
        coconutMilkSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        almondMilkLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        almondMilkLabel.topAnchor.constraint(equalTo: coconutMilkSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        almondMilkLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        almondMilkLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        almondMilkLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(almondMilkCaloriesLabel)
        scrollView.addSubview(almondMilkProteinLabel)
        scrollView.addSubview(almondMilkCarbsLabel)
        scrollView.addSubview(almondMilkFatsLabel)
        scrollView.addSubview(almondMilkSugarLabel)
        
        almondMilkCaloriesLabel.centerXAnchor.constraint(equalTo: almondMilkLabel.centerXAnchor).isActive = true
        almondMilkCaloriesLabel.topAnchor.constraint(equalTo: almondMilkLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        almondMilkCaloriesLabel.widthAnchor.constraint(equalTo: almondMilkLabel.widthAnchor).isActive = true
        almondMilkCaloriesLabel.heightAnchor.constraint(equalTo: almondMilkLabel.heightAnchor, multiplier: 1).isActive = true
        almondMilkCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        almondMilkProteinLabel.centerXAnchor.constraint(equalTo: almondMilkCaloriesLabel.centerXAnchor).isActive = true
        almondMilkProteinLabel.topAnchor.constraint(equalTo: almondMilkCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        almondMilkProteinLabel.widthAnchor.constraint(equalTo: almondMilkLabel.widthAnchor).isActive = true
        almondMilkProteinLabel.heightAnchor.constraint(equalTo: almondMilkLabel.heightAnchor, multiplier: 1).isActive = true
        almondMilkProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        almondMilkCarbsLabel.centerXAnchor.constraint(equalTo: almondMilkLabel.centerXAnchor).isActive = true
        almondMilkCarbsLabel.topAnchor.constraint(equalTo: almondMilkProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        almondMilkCarbsLabel.widthAnchor.constraint(equalTo: almondMilkLabel.widthAnchor).isActive = true
        almondMilkCarbsLabel.heightAnchor.constraint(equalTo: almondMilkLabel.heightAnchor, multiplier: 0.75).isActive = true
        almondMilkCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        almondMilkFatsLabel.centerXAnchor.constraint(equalTo: almondMilkLabel.centerXAnchor).isActive = true
        almondMilkFatsLabel.topAnchor.constraint(equalTo: almondMilkCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        almondMilkFatsLabel.widthAnchor.constraint(equalTo: almondMilkLabel.widthAnchor).isActive = true
        almondMilkFatsLabel.heightAnchor.constraint(equalTo: almondMilkLabel.heightAnchor, multiplier: 0.75).isActive = true
        almondMilkFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        almondMilkSugarLabel.centerXAnchor.constraint(equalTo: almondMilkLabel.centerXAnchor).isActive = true
        almondMilkSugarLabel.topAnchor.constraint(equalTo: almondMilkFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        almondMilkSugarLabel.widthAnchor.constraint(equalTo: almondMilkLabel.widthAnchor).isActive = true
        almondMilkSugarLabel.heightAnchor.constraint(equalTo: almondMilkLabel.heightAnchor, multiplier: 0.75).isActive = true
        almondMilkSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        soyMilkLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.05).isActive = true
        soyMilkLabel.topAnchor.constraint(equalTo: almondMilkSugarLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        soyMilkLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        soyMilkLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        soyMilkLabel.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(soyMilkCaloriesLabel)
        scrollView.addSubview(soyMilkProteinLabel)
        scrollView.addSubview(soyMilkCarbsLabel)
        scrollView.addSubview(soyMilkFatsLabel)
        scrollView.addSubview(soyMilkSugarLabel)
        
        soyMilkCaloriesLabel.centerXAnchor.constraint(equalTo: soyMilkLabel.centerXAnchor).isActive = true
        soyMilkCaloriesLabel.topAnchor.constraint(equalTo: soyMilkLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        soyMilkCaloriesLabel.widthAnchor.constraint(equalTo: soyMilkLabel.widthAnchor).isActive = true
        soyMilkCaloriesLabel.heightAnchor.constraint(equalTo: soyMilkLabel.heightAnchor, multiplier: 1).isActive = true
        soyMilkCaloriesLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        soyMilkProteinLabel.centerXAnchor.constraint(equalTo: soyMilkCaloriesLabel.centerXAnchor).isActive = true
        soyMilkProteinLabel.topAnchor.constraint(equalTo: soyMilkCaloriesLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        soyMilkProteinLabel.widthAnchor.constraint(equalTo: almondMilkLabel.widthAnchor).isActive = true
        soyMilkProteinLabel.heightAnchor.constraint(equalTo: soyMilkLabel.heightAnchor, multiplier: 1).isActive = true
        soyMilkProteinLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        soyMilkCarbsLabel.centerXAnchor.constraint(equalTo: soyMilkLabel.centerXAnchor).isActive = true
        soyMilkCarbsLabel.topAnchor.constraint(equalTo: soyMilkProteinLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        soyMilkCarbsLabel.widthAnchor.constraint(equalTo: soyMilkLabel.widthAnchor).isActive = true
        soyMilkCarbsLabel.heightAnchor.constraint(equalTo: soyMilkLabel.heightAnchor, multiplier: 0.75).isActive = true
        soyMilkCarbsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        soyMilkFatsLabel.centerXAnchor.constraint(equalTo: soyMilkLabel.centerXAnchor).isActive = true
        soyMilkFatsLabel.topAnchor.constraint(equalTo: soyMilkCarbsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        soyMilkFatsLabel.widthAnchor.constraint(equalTo: soyMilkLabel.widthAnchor).isActive = true
        soyMilkFatsLabel.heightAnchor.constraint(equalTo: soyMilkLabel.heightAnchor, multiplier: 0.75).isActive = true
        soyMilkFatsLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        soyMilkSugarLabel.centerXAnchor.constraint(equalTo: soyMilkLabel.centerXAnchor).isActive = true
        soyMilkSugarLabel.topAnchor.constraint(equalTo: soyMilkFatsLabel.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
        soyMilkSugarLabel.widthAnchor.constraint(equalTo: soyMilkLabel.widthAnchor).isActive = true
        soyMilkSugarLabel.heightAnchor.constraint(equalTo: soyMilkLabel.heightAnchor, multiplier: 0.75).isActive = true
        soyMilkSugarLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.05)
        
        scrollView.addSubview(wholeMilkServingLabel)
        scrollView.addSubview(twoPercentMilkServingLabel)
        scrollView.addSubview(onePercentMilkServingLabel)
        scrollView.addSubview(nonfatMilkServingLabel)
        scrollView.addSubview(halfAndHalfServingLabel)
        scrollView.addSubview(heavyCreamServingLabel)
        scrollView.addSubview(coconutMilkServingLabel)
        scrollView.addSubview(almondMilkServingLabel)
        scrollView.addSubview(soyMilkServingLabel)
        
        wholeMilkServingLabel.leftAnchor.constraint(equalTo: wholeMilkLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        wholeMilkServingLabel.centerYAnchor.constraint(equalTo: wholeMilkLabel.centerYAnchor).isActive = true
        wholeMilkServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        wholeMilkServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        wholeMilkServingLabel.text = "\(wholeMilkServing)"
        wholeMilkServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        twoPercentMilkServingLabel.leftAnchor.constraint(equalTo: twoPercentMilkLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        twoPercentMilkServingLabel.centerYAnchor.constraint(equalTo: twoPercentMilkLabel.centerYAnchor).isActive = true
        twoPercentMilkServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        twoPercentMilkServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        twoPercentMilkServingLabel.text = "\(twoPercentMilkServing)"
        twoPercentMilkServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        onePercentMilkServingLabel.leftAnchor.constraint(equalTo: onePercentMilkLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        onePercentMilkServingLabel.centerYAnchor.constraint(equalTo: onePercentMilkLabel.centerYAnchor).isActive = true
        onePercentMilkServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        onePercentMilkServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        onePercentMilkServingLabel.text = "\(onePercentMilkServing)"
        onePercentMilkServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        nonfatMilkServingLabel.leftAnchor.constraint(equalTo: nonfatMilkLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        nonfatMilkServingLabel.centerYAnchor.constraint(equalTo: nonfatMilkLabel.centerYAnchor).isActive = true
        nonfatMilkServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        nonfatMilkServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        nonfatMilkServingLabel.text = "\(nonFatSkimMilkServing)"
        nonfatMilkServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        halfAndHalfServingLabel.leftAnchor.constraint(equalTo: halfAndHalfLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        halfAndHalfServingLabel.centerYAnchor.constraint(equalTo: halfAndHalfLabel.centerYAnchor).isActive = true
        halfAndHalfServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        halfAndHalfServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        halfAndHalfServingLabel.text = "\(halfAndHalfServing)"
        halfAndHalfServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        heavyCreamServingLabel.leftAnchor.constraint(equalTo: heavyCreamLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        heavyCreamServingLabel.centerYAnchor.constraint(equalTo: heavyCreamLabel.centerYAnchor).isActive = true
        heavyCreamServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        heavyCreamServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        heavyCreamServingLabel.text = "\(heavyCreamServing)"
        heavyCreamServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        coconutMilkServingLabel.leftAnchor.constraint(equalTo: coconutMilkLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        coconutMilkServingLabel.centerYAnchor.constraint(equalTo: coconutMilkLabel.centerYAnchor).isActive = true
        coconutMilkServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        coconutMilkServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        coconutMilkServingLabel.text = "\(coconutMilkServing)"
        coconutMilkServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        almondMilkServingLabel.leftAnchor.constraint(equalTo: almondMilkLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        almondMilkServingLabel.centerYAnchor.constraint(equalTo: almondMilkLabel.centerYAnchor).isActive = true
        almondMilkServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        almondMilkServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        almondMilkServingLabel.text = "\(almondMilkServing)"
        almondMilkServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        soyMilkServingLabel.leftAnchor.constraint(equalTo: soyMilkLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        soyMilkServingLabel.centerYAnchor.constraint(equalTo: soyMilkLabel.centerYAnchor).isActive = true
        soyMilkServingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        soyMilkServingLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        soyMilkServingLabel.text = "\(soyMilkServing)"
        soyMilkServingLabel.font = UIFont.systemFont(ofSize: view.frame.width * 0.065)
        
        scrollView.addSubview(wholeMilkStepper)
        scrollView.addSubview(twoPercentMilkStepper)
        scrollView.addSubview(onePercentMilkStepper)
        scrollView.addSubview(nonfatMilkStepper)
        scrollView.addSubview(halfAndHalfStepper)
        scrollView.addSubview(heavyCreamStepper)
        scrollView.addSubview(coconutMilkStepper)
        scrollView.addSubview(almondMilkStepper)
        scrollView.addSubview(soyMilkStepper)
        
        wholeMilkStepper.leftAnchor.constraint(equalTo: wholeMilkServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        wholeMilkStepper.centerYAnchor.constraint(equalTo: wholeMilkLabel.centerYAnchor).isActive = true
        wholeMilkStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        wholeMilkStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        twoPercentMilkStepper.leftAnchor.constraint(equalTo: twoPercentMilkServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        twoPercentMilkStepper.centerYAnchor.constraint(equalTo: twoPercentMilkLabel.centerYAnchor).isActive = true
        twoPercentMilkStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        twoPercentMilkStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        onePercentMilkStepper.leftAnchor.constraint(equalTo: onePercentMilkServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        onePercentMilkStepper.centerYAnchor.constraint(equalTo: onePercentMilkLabel.centerYAnchor).isActive = true
        onePercentMilkStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        onePercentMilkStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        nonfatMilkStepper.leftAnchor.constraint(equalTo: nonfatMilkServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        nonfatMilkStepper.centerYAnchor.constraint(equalTo: nonfatMilkLabel.centerYAnchor).isActive = true
        nonfatMilkStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        nonfatMilkStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        halfAndHalfStepper.leftAnchor.constraint(equalTo: halfAndHalfServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        halfAndHalfStepper.centerYAnchor.constraint(equalTo: halfAndHalfLabel.centerYAnchor).isActive = true
        halfAndHalfStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        halfAndHalfStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        heavyCreamStepper.leftAnchor.constraint(equalTo: heavyCreamServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        heavyCreamStepper.centerYAnchor.constraint(equalTo: heavyCreamLabel.centerYAnchor).isActive = true
        heavyCreamStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        heavyCreamStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        coconutMilkStepper.leftAnchor.constraint(equalTo: coconutMilkServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        coconutMilkStepper.centerYAnchor.constraint(equalTo: coconutMilkLabel.centerYAnchor).isActive = true
        coconutMilkStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        coconutMilkStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        almondMilkStepper.leftAnchor.constraint(equalTo: almondMilkServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        almondMilkStepper.centerYAnchor.constraint(equalTo: almondMilkLabel.centerYAnchor).isActive = true
        almondMilkStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        almondMilkStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        soyMilkStepper.leftAnchor.constraint(equalTo: soyMilkServingLabel.rightAnchor, constant: view.frame.width * 0.025).isActive = true
        soyMilkStepper.centerYAnchor.constraint(equalTo: soyMilkLabel.centerYAnchor).isActive = true
        soyMilkStepper.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15).isActive = true
        soyMilkStepper.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
    }
    
    @objc func handleWholeMilkStepper(sender: UIStepper!) {
        wholeMilkServing = Int(sender.value)
        wholeMilkServingLabel.text = "\(wholeMilkServing)"
    }
    
    @objc func handleTwoPercentMilkStepper(sender: UIStepper!) {
        twoPercentMilkServing = Int(sender.value)
        twoPercentMilkServingLabel.text = "\(twoPercentMilkServing)"
    }
    
    @objc func handleOnePercentMilkStepper(sender: UIStepper!) {
        onePercentMilkServing = Int(sender.value)
        onePercentMilkServingLabel.text = "\(onePercentMilkServing)"
    }
    
    @objc func handleNonfatMilkStepper(sender: UIStepper!) {
        nonFatSkimMilkServing = Int(sender.value)
        nonfatMilkServingLabel.text = "\(nonFatSkimMilkServing)"
    }
    
    @objc func handleHalfAndHalfStepper(sender: UIStepper!) {
        halfAndHalfServing = Int(sender.value)
        halfAndHalfServingLabel.text = "\(halfAndHalfServing)"
    }
    
    @objc func handleHeavyCreamStepper(sender: UIStepper!) {
        heavyCreamServing = Int(sender.value)
        heavyCreamServingLabel.text = "\(heavyCreamServing)"
    }
    
    @objc func handleCoconutMilkStepper(sender: UIStepper!) {
        coconutMilkServing = Int(sender.value)
        coconutMilkServingLabel.text = "\(coconutMilkServing)"
    }
    
    @objc func handleAlmondMilkStepper(sender: UIStepper!) {
        almondMilkServing = Int(sender.value)
        almondMilkServingLabel.text = "\(almondMilkServing)"
    }
    
    @objc func handleSoyMilkStepper(sender: UIStepper!) {
        soyMilkServing = Int(sender.value)
        soyMilkServingLabel.text = "\(soyMilkServing)"
    }
    
    @objc func handleBack() {
        noMilks = true
        UserDefaults.standard.set(true, forKey: "noMilks")
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
        UserDefaults.standard.set(0, forKey: "coconutMilkServing")
        almondMilkServing = 0
        UserDefaults.standard.set(0, forKey: "almondMilkServing")
        soyMilkServing = 0
        UserDefaults.standard.set(0, forKey: "soyMilkServing")
        UserDefaults.standard.synchronize()
        
        self.dismiss(animated: true) {}
    }
    
    @objc func handleNext() {
        wholeMilkServing = Int(wholeMilkServingLabel.text!)!
        UserDefaults.standard.set(Int(wholeMilkServingLabel.text!)!, forKey: "wholeMilkServing")
        twoPercentMilkServing = Int(twoPercentMilkServingLabel.text!)!
        UserDefaults.standard.set(Int(twoPercentMilkServingLabel.text!)!, forKey: "twoPercentMilkServing")
        onePercentMilkServing = Int(onePercentMilkServingLabel.text!)!
        UserDefaults.standard.set(Int(onePercentMilkServingLabel.text!)!, forKey: "onePercentMilkServing")
        nonFatSkimMilkServing = Int(nonfatMilkServingLabel.text!)!
        UserDefaults.standard.set(Int(nonfatMilkServingLabel.text!)!, forKey: "nonFatSkimMilkServing")
        halfAndHalfServing = Int(halfAndHalfServingLabel.text!)!
        UserDefaults.standard.set(Int(halfAndHalfServingLabel.text!)!, forKey: "halfAndHalfServing")
        heavyCreamServing = Int(heavyCreamServingLabel.text!)!
        UserDefaults.standard.set(Int(heavyCreamServingLabel.text!)!, forKey: "heavyCreamServing")
        coconutMilkServing = Int(coconutMilkServingLabel.text!)!
        UserDefaults.standard.set(Int(coconutMilkServingLabel.text!)!, forKey: "coconutMilkServing")
        almondMilkServing = Int(almondMilkServingLabel.text!)!
        UserDefaults.standard.set(Int(almondMilkServingLabel.text!)!, forKey: "almondMilkServing")
        soyMilkServing = Int(soyMilkServingLabel.text!)!
        UserDefaults.standard.set(Int(soyMilkServingLabel.text!), forKey: "soyMilkServing")
        UserDefaults.standard.synchronize()
        
        if wholeMilkServing > 0 || twoPercentMilkServing > 0  || onePercentMilkServing > 0 || nonFatSkimMilkServing > 0 || halfAndHalfServing > 0 || heavyCreamServing > 0 || coconutMilkServing > 0 || almondMilkServing > 0 || soyMilkServing > 0 {
            noMilks = false
            UserDefaults.standard.set(false, forKey: "noMilks")
            UserDefaults.standard.synchronize()
        }
        
        self.present(CustomCoffeeSyrups(), animated: true) {}
    }
    
}
