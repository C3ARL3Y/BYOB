//
//  CustomCoffeeBase.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 2/6/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class CustomCoffeeBase: CustomCoffeeParentViewController {
    
    var baseDrinks = CoffeeBaseModel.getStaticModels()
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
    }
    
    override func handleSave() {
        guard let selectedModel = selectedCell?.coffeeBaseModel else {
            return
        }
        UserDefaults.standard.setValue(selectedModel.type.rawValue, forKey: UDKeys.baseDrink.rawValue)
    }
    
    override func handleNext() {
        if selectedCell != nil {
            // Save data
            handleSave()
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
        let cell = CoffeeBaseCell()
        let model = baseDrinks[indexPath.row]
        cell.coffeeBaseModel = model
        cell.setupCell()
        cell.delegate = self
        if let selectedCell = selectedCell {
            if selectedCell.coffeeBaseModel.type == model.type {
                cell.checkBoxPressed()
            }
        }
        return cell
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
