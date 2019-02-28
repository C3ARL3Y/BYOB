//
//  Customize.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 2/4/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class Customize: UIViewController {
    
    // Your order label
    // order details and Nutrition details
    // Start your custom drink
    //  edit order
    // reset order
    
    var drinkModel: UDDrinkModel? {
        didSet {
          updateUIWithModel()
        }
    }
    
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
        label.numberOfLines = 2
        label.lineBreakMode = .byWordWrapping
        label.text = ""
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        return label
    }()
    
    let beginOrderButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Tap To Begin Customizing Your Next Drink!", for: UIControl.State.normal)
        button.setTitleColor(UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1), for: UIControl.State.normal)
        button.titleLabel?.lineBreakMode = .byCharWrapping
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = .center
        button.addTarget(self, action: #selector(handleBeginDrink), for: .touchUpInside)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupScrollView()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadCustomDrink()
    }
    
    @objc func favoriteButtonPressed() {
        // add drink to favorites
        guard let _ = drinkModel else {
            return
        }
        
        let alert = UIAlertController(title: "", message: "Set Drink Name", preferredStyle: .alert)
        alert.addTextField(configurationHandler: { (textField) in
            textField.placeholder = "name..."
        })
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: { (updateAction) in
            self.drinkModel?.name = alert.textFields?.first?.text
            
            let data = self.drinkModel?.convertToData()
            var set = true
            var i = 0
            // Loop till the last savedDrink has been iterated through
            while set {
                if let _ = UserDefaults.standard.value(forKey: UDKeys.favDrinks.rawValue + "\(i)") as? [String: Any] {
                    i+=1
                } else {
                    UserDefaults.standard.setValue(data, forKey: UDKeys.favDrinks.rawValue + "\(i)")
                    set = false
                    self.drinkModel = nil
                }
            }
        }))
        
        self.present(alert, animated: false)
        
    }
    
    private func setupView() {
        view.backgroundColor = UIColor(red: 255/255, green: 218/255, blue: 185/255, alpha: 1)
        navigationItem.title = "Customize"
        let button = UIBarButtonItem(image: UIImage(named: "FavoritesButtonImg"), style: UIBarButtonItem.Style.done, target: self, action: #selector(favoriteButtonPressed))
        button.tintColor = .red
        navigationItem.setRightBarButton(button, animated: true)
        
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
        
        if true {
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
    
    func updateUIWithModel() {
        yourDrinkLabel.text = drinkModel != nil ? "Override Current Drink OR Save Current Drink To Favorites Forever!" : ""
        
    }
    
    private func loadCustomDrink() {
        let standard = UserDefaults.standard
        
        let uid = UUID()
        var baseType: CoffeeBaseType?
        var milkServings = [MilkType: Int]()
        var syrupServings = [SyrupType: Int]()
        var extraType: ExtraType = .empty
        let name = standard.value(forKey: "name") as? String
        
        for key in UDKeys.allCases {
            let stringKey = key.rawValue
            if standard.value(forKey: stringKey) != nil {
                // Has data
                if let stringValue = standard.value(forKey: stringKey) as? String {
                    if let coffeeBase = CoffeeBaseType.init(rawValue: stringValue) {
                        baseType = coffeeBase
                    } else if let extras = ExtraType.init(rawValue: stringValue) {
                        extraType = extras
                    } else {
                        
                    }
                }
                
                if let dict = standard.value(forKey: stringKey) as? [String: Int] {
                    for (stringValue, numberOfServings) in dict {
                        if let type = MilkType.init(rawValue: stringValue) {
                            milkServings.updateValue(numberOfServings, forKey: type)
                        } else if let type = SyrupType.init(rawValue: stringValue) {
                            syrupServings.updateValue(numberOfServings, forKey: type)
                        }
                    }
                }
            }
        }

        // Change UI depending on if there is data
        // What happends when you select the drink?
        if let baseType = baseType {
            let drinkModel = UDDrinkModel(name: name, uid: uid, baseType: baseType, milkServings: milkServings, syrupServings: syrupServings, extraType: extraType)
            self.drinkModel = drinkModel
        }
    }
    
    
    
    @objc func handleBeginDrink() {
        handleReset()
        present(CustomCoffeeBase(), animated: true)
    }
    
    @objc func handleEditDrink() {
        
    }
    
    @objc func handleReset() {
        // remove anything that need to be and then add in the begin drink button
        for key in UDKeys.allCases {
            UserDefaults.standard.removeObject(forKey: key.rawValue)
        }
    }
}
