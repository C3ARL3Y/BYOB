//
//  CustomCoffeeBase.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 2/6/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class CustomCoffeeBase: CustomCoffeeParentViewController {
    
    var baseDrinks = [
    CoffeeBaseModel(name: "Hot Coffee", tall: 0, grande: 0, venti: 0),
    CoffeeBaseModel(name: "Americano Hot/Iced", tall: 0, grande: 0, venti: 0),
    CoffeeBaseModel(name: "Iced Coffee UNSWEET", tall: 0, grande: 0, venti: 0)
    ]
    var selectedCell: CoffeeBaseCell?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coffeeBaseTitle.text = "Coffee Base"
        nextViewController = CustomCoffeeMilks()
    }
    
    override func setupDelegates() {
        tableView.delegate = self
    }
    
    override func setupDataSources() {
        tableView.dataSource = self
    }
    
    override func tableViewRegisterCells() {
        tableView.register(CoffeeBaseCell.self, forCellReuseIdentifier: "cell")
    }
    
  override func handleNext() {
        if selectedCell != nil {
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
}

extension CustomCoffeeBase: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return baseDrinks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CoffeeBaseCell {
            let model = baseDrinks[indexPath.row]
            cell.coffeeBaseModel = model
            cell.setupCell()
            cell.delegate = self
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40 * 5
    }
}

extension CustomCoffeeBase: SelectedCheckBoxDelegate {
    func selected(cell: UITableViewCell) {
        if let cell = cell as? CoffeeBaseCell {
            if let selectedCell = selectedCell {
                selectedCell.checkBox.isSelected = false
            }
            selectedCell = cell
        }
    }
}
