//
//  Customize.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 2/4/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class Customize: UIViewController {
    
    var drinkModel: UDDrinkModel? {
        didSet {
            updateUIWithModel()
        }
    }
    
    let scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.bounces = true
        sv.alwaysBounceVertical = true
        sv.alwaysBounceHorizontal = false
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
    
    lazy var youDrinkButton: UIButton = {
        let label = UIButton()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.titleLabel?.numberOfLines = 2
        label.titleLabel?.lineBreakMode = .byWordWrapping
        label.setTitle("", for: .normal)
        label.setTitleColor(UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1), for: .normal)
        label.titleLabel?.textAlignment = .center
        label.addTarget(self, action: #selector(yourDrinkButtonpressed), for: .touchUpInside)
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
    
    @objc func yourDrinkButtonpressed() {
        present(FavoriteDrinkViewerViewController().configured {
            $0.drink = drinkModel
        }, animated: true, completion: nil)
    }
    
    @objc func favoriteButtonPressed() {
        // add drink to favorites
        guard let drinkModel = drinkModel else {
            return
        }
        
        let alert = UIAlertController(title: "", message: "Set Drink Name", preferredStyle: .alert)
        alert.addTextField(configurationHandler: { (textField) in
            textField.placeholder = "name..."
        })
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: { (updateAction) in
            let name = alert.textFields?.first?.text
            self.drinkModel?.name = name
            let data = self.drinkModel?.convertToData()
            UserDefaults.standard.setValue(data, forKey: UDKeys.favDrinks.rawValue + drinkModel.uid.uuidString)
            self.drinkModel = nil
            self.deleteData()
        }))
        
        self.present(alert, animated: false)
    }
    
    func deleteData() {
        for key in UDKeys.allCases {
            if key != .favDrinks {
                let string = key.rawValue
                UserDefaults.standard.removeObject(forKey: string)
            }
        }
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
        scrollView.addSubview(youDrinkButton)
        
        logo.leftAnchor.constraint(equalTo: view.leftAnchor, constant: (view.frame.width * 0.05)).isActive = true
        logo.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: (view.frame.height * 0.025)).isActive = true
        logo.widthAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.15).isActive = true
        logo.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.15).isActive = true
        
        customizeLabel.leftAnchor.constraint(equalTo: logo.rightAnchor, constant: view.frame.width * 0.05).isActive = true
        customizeLabel.centerYAnchor.constraint(equalTo: logo.centerYAnchor).isActive = true
        customizeLabel.heightAnchor.constraint(equalTo: logo.heightAnchor, multiplier: 1).isActive = true
        customizeLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.55).isActive = true
        
        youDrinkButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        youDrinkButton.topAnchor.constraint(equalTo: customizeLabel.bottomAnchor, constant: view.frame.height * 0.05).isActive = true
        youDrinkButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75).isActive = true
        youDrinkButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        
        scrollView.addSubview(beginOrderButton)
        
        beginOrderButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        beginOrderButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: (view.frame.height * 0.125)).isActive = true
        beginOrderButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        beginOrderButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2).isActive = true
        beginOrderButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.065)
    }
    
    func updateUIWithModel() {
        youDrinkButton.setTitle(drinkModel != nil ? "DRINK CREATED, SAVE IT TO FAVORITES FOREVER" : "", for: .normal)
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
