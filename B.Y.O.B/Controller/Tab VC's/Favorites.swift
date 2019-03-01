//
//  Favorites.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 2/4/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class Favorites: UIViewController {
    
    var drinks = [UDDrinkModel]()
    lazy var tableView = UITableView().configured {
        $0.delegate = self
        $0.dataSource = self
        $0.backgroundColor = .clear
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 255/255, green: 218/255, blue: 185/255, alpha: 1)
        navigationItem.title = "Favorites"
        getFavoritedDrinks()
        setupViews()
        view.backgroundColor = .tanBG
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        getFavoritedDrinks()
    }
    
    func setupViews() {
        view.addSubview(tableView)
        tableView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
    }
    
    func getFavoritedDrinks() {
        drinks.removeAll()
        // Loop till the last savedDrink has been iterated through
        for (key, data) in UserDefaults.standard.dictionaryRepresentation() {
            if key.contains(UDKeys.favDrinks.rawValue) {
                if let data = data as? [String: Any] {
                    if let drink = UDDrinkModel.convert(from: data) {
                        if let name = drink.name, !name.isEmpty {
                            drinks.append(drink)
                        }
                    }
                }
            }
        }
        tableView.reloadData()
    }
}

extension Favorites: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // present favorites vc
        let drink = drinks[indexPath.row]
        present(FavoriteDrinkViewerViewController().configured {
            $0.drink = drink
        }, animated: true, completion: nil)
    }
}

extension Favorites: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drinks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = .clear
        let drink = drinks[indexPath.row]
        cell.textLabel?.text = drink.name
        cell.textLabel?.textColor = .tanTitle
        return cell
    }
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let drink = drinks[indexPath.row]
        let deleteAction = UITableViewRowAction(style: .default, title: "Delete", handler: { (action, indexPath) in
            let _ = self.drinks.remove(at: indexPath.row)
            // Delete drink
            UserDefaults.standard.removeObject(forKey: UDKeys.favDrinks.rawValue + drink.uid.uuidString)
            UserDefaults.standard.synchronize()
            tableView.reloadData()
        })
        
        return [deleteAction]
    }
    
    
}
