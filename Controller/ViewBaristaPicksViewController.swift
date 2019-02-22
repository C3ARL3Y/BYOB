//
//  ViewBaristaPicks.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/18/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class ViewBaristaPicsViewController: UIViewController {
    
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
    
    lazy var drinkTableView = UITableView().configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.separatorColor = .clear
        $0.delegate = self
        $0.dataSource = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        view.backgroundColor = .tanBG
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        fetchDrinks()
    }
    
    // add ability to edit previous drinks
    // Delete drinks
    
    func fetchDrinks() {
        drinks.removeAll()
        FirebaseService.fetchDrinks(of: drinksType) { [weak self] (model) in
            if let mainSelf = self {
                if !mainSelf.modelAlreadyExists(uuid: model.uid) {
                    self?.drinks.append(model)
                    self?.drinkTableView.reloadData()
                }
            }
        }
    }
    
    func modelAlreadyExists(uuid: String) -> Bool {
        for fetchedDrink in drinks {
            if fetchedDrink.uid == uuid {
                return true
            }
        }
        return false
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


extension ViewBaristaPicsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drinks.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell().configured { cell in
            let drink = drinks[indexPath.row]
            cell.textLabel?.text = drink.name
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let drink = drinks[indexPath.row]
        present(ViewDrinkViewController().configured {
            $0.drink = drink
        }, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let drink = drinks[indexPath.row]
        let editAction = UITableViewRowAction(style: .default, title: "Edit", handler: { (action, indexPath) in
            self.present(CreateBaristaPicksViewController().configured {
                // set data in vc to data that was downloaded from firebase
                $0.drink = drink
            }, animated: true, completion: nil)
        })
        
        let deleteAction = UITableViewRowAction(style: .default, title: "Delete", handler: { (action, indexPath) in
            FirebaseService.deleteDrink(of: drink.type, with: drink.uid)
            let _ = self.drinks.remove(at: indexPath.row)
            tableView.reloadData()
        })
        
        return [deleteAction, editAction]
    }
}
