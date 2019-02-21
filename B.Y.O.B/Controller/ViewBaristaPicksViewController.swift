//
//  ViewBaristaPicks.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/18/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class ViewBaristaPicsViewController: UIViewController {
    
    // Fetch drinks of certain type from firebase 
    
    var drinksType: DrinkType!
    
    var drinks = [FIRDrinkModel]()
    
    let createDrinkButton = UIButton().configured {
        $0.backgroundColor = .tanTitle
        $0.setTitle("New Drink", for: .normal)
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addTarget(self, action: #selector(createDrinkButtonPressed), for: .touchUpInside)
    }
    
    let doneButton = UIButton().configured {
        $0.backgroundColor = .tanTitle
        $0.setTitle("Done", for: .normal)
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addTarget(self, action: #selector(doneButtonPressed), for: .touchUpInside)
    }
    
    let drinkTableView = UITableView().configured {
        $0.backgroundColor = .gray
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        view.backgroundColor = .tanBG
    }
    
    // Fetch data
    // Present data to UI    [image] - drink name
    // add ability to edit previous drinks
    // Delete drinks
    
    func fetchDrinks() {
        
        
        
    }
    
    

    func setupViews() {
        view.addSubview(drinkTableView)
        view.addSubview(createDrinkButton)
        view.addSubview(doneButton)
        
        drinkTableView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: createDrinkButton.topAnchor, trailing: view.trailingAnchor, padding: UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10))
        
        createDrinkButton.anchor(top: nil, leading: view.leadingAnchor, bottom: doneButton.topAnchor, trailing: view.trailingAnchor, padding: UIEdgeInsets(top: 10, left: 20, bottom: 20, right: 20), size: CGSize(width: 0, height: 60))
        
        doneButton.anchor(top: nil, leading: createDrinkButton.leadingAnchor, bottom: view.bottomAnchor, trailing: createDrinkButton.trailingAnchor, padding: UIEdgeInsets(top: 0, left: 0, bottom: 20, right: 0), size: CGSize(width: 0, height: 60))
        
    }
    
    @objc func createDrinkButtonPressed() {
        present(CreateBaristaPicksViewController().configured {
            $0.drinkType = drinksType
        }, animated: true, completion: nil)
    }
    
    @objc func doneButtonPressed() {
        dismiss(animated: true, completion: nil)
    }
}
