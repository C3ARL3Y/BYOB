//
//  ViewBaristaPicks.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/18/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit
import FirebaseAuth
class ViewBaristaPicsViewController: UIViewController {
    
    var drinksType: DrinkType!
    
    var drinks = [FIRDrinkModel]()
    var sortedDrinks: [FIRDrinkModel] {
        return drinks.sorted(by: { (post1, post2) -> Bool in
            return post1.timestamp < post2.timestamp
        })
    }
    
    lazy var searchDrink = UISearchBar().configured {
        $0.placeholder = "drink name..."
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.delegate = self
        $0.backgroundImage = UIImage()
        $0.backgroundColor = .clear
        $0.tintColor = .tanTitle
    }
    
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
        $0.layer.cornerRadius = 30
        $0.clipsToBounds = true 
    }
    
    @objc func tappedOutSideOfKeyBoard() {
        searchDrink.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(tappedOutSideOfKeyBoard))
        view.addGestureRecognizer(gesture)
        view.backgroundColor = .tanBG
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fetchDrinks()
        
        if Auth.auth().currentUser == nil {
            createDrinkButton.isHidden = true
        }
    }
    
    func fetchDrinks() {
        
        FirebaseService.fetchDrinks(of: drinksType, lastTimestamp: sortedDrinks.last?.timestamp, limit: 10) { [weak self] (model) in
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
        view.addSubview(searchDrink)
        view.addSubview(drinkTableView)
        view.addSubview(createDrinkButton)
        view.addSubview(doneButton)
        
        searchDrink.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .zero, size: CGSize(width: 0, height: 50))
        
        drinkTableView.anchor(top: searchDrink.bottomAnchor, leading: view.leadingAnchor, bottom: createDrinkButton.bottomAnchor, trailing: view.trailingAnchor, padding: UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10))
        
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
            if indexPath.row < drinks.count {
                let drink = sortedDrinks[indexPath.row]
                cell.textLabel?.text = drink.name.isEmpty ? "Untitled Drink" : drink.name
                cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 20)
            }
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let drink = sortedDrinks[indexPath.row]
        present(ViewBaristaPicksDrinkViewController().configured {
            $0.drink = drink
        }, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let drink = sortedDrinks[indexPath.row]
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

    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let lastElement = drinks.count - 1
        if indexPath.row == lastElement {
            fetchDrinks()
        }
    }
}
extension ViewBaristaPicsViewController: UISearchBarDelegate {
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        // Search
        guard let text = searchBar.text else {
            return
        }
        drinks.removeAll()
        FirebaseService.fetchDrinks(of: drinksType, with: text) { [weak self] (model) in
            if let mainSelf = self {
                if !mainSelf.modelAlreadyExists(uuid: model.uid) {
                    self?.drinks.append(model)
                    self?.drinkTableView.reloadData()
                }
            }
        }
    }
}
