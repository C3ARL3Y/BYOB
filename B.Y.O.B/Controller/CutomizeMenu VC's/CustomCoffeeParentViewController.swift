//
//  CustomCoffeeParentViewController.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/22/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

protocol CoffeeCreationProtocol {
    func setupDelegates()
    func setupDataSources()
    func tableViewRegisterCells()
    var nextViewController: UIViewController {get set}
}

class CustomCoffeeParentViewController: UIViewController, CoffeeCreationProtocol {
  
    var nextViewController: UIViewController = UIViewController()
    
    var coffeeBases = [CoffeeBaseModel]()
    
    let coffeeBaseTitle = UILabel().configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Placeholder TITLE"
        $0.backgroundColor = .blue
        $0.textAlignment = .center
        $0.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
    }
    
    lazy var tableView = UITableView().configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.bounces = true
        $0.alwaysBounceVertical = true
        $0.alwaysBounceHorizontal = false
        $0.backgroundColor = .red
    }
    
    let backButton = UIButton().configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("Back", for: UIControl.State.normal)
        $0.setTitleColor(UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1), for: UIControl.State.normal)
        $0.titleLabel?.textAlignment = .center
        $0.addTarget(self, action: #selector(handleBack), for: .touchUpInside)
    }
    
    let nextButton = UIButton().configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("Next", for: UIControl.State.normal)
        $0.setTitleColor(UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1), for: UIControl.State.normal)
        $0.titleLabel?.textAlignment = .center
        $0.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupDelegates()
        setupDataSources()
        tableViewRegisterCells()
    }
    
    private func setupView() {
        view.backgroundColor = UIColor(red: 255/255, green: 218/255, blue: 185/255, alpha: 1)
        
        view.addSubview(coffeeBaseTitle)
        view.addSubview(backButton)
        view.addSubview(nextButton)
        view.addSubview(tableView)
        
        coffeeBaseTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        coffeeBaseTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.height * 0.05).isActive = true
        coffeeBaseTitle.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        coffeeBaseTitle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
        coffeeBaseTitle.font = UIFont.boldSystemFont(ofSize: view.frame.width * 0.075)
        
        tableView.anchor(top: coffeeBaseTitle.bottomAnchor, leading: view.leadingAnchor, bottom: nextButton.topAnchor, trailing: view.trailingAnchor)
        
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
    }
    
    
    @objc func handleBack() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func handleNext() {
        if true {
            present(nextViewController, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Please Select a Coffee Base", message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                switch action.style{
                case .default:
                    print("default")
                    
                case .cancel:
                    print("cancel")
                    
                case .destructive:
                    print("destructive")
                    
                    
                }}))
            present(alert, animated: true, completion: nil)
            
        }
    }
    
    func setupDelegates() {
    }
    
    func setupDataSources() {
    }
    
    func tableViewRegisterCells() {
    }
    
}
