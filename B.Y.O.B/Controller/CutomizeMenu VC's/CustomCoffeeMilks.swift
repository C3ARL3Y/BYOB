//
//  CustomCoffeeMilks.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 2/7/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class CustomCoffeeMilks: CustomCoffeeParentViewController {
    
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
    
    var milkModels = MilkModel.getStaticModels()
    var data = [String: Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coffeeBaseTitle.text = "Milks"
        nextViewController = CustomCoffeeSyrups()
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
        UserDefaults.standard.setValue(data, forKey: UDKeys.milk.rawValue)
    }
    
    override func removeSave() {
        UserDefaults.standard.removeObject(forKey: UDKeys.milk.rawValue)
    }
}

extension CustomCoffeeMilks: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return milkModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MilkCell()
        let model = milkModels[indexPath.row]
        cell.type = model.type
        cell.titleLabel.text = model.name
        cell.caloriesLabel.text = "Calories: \(model.caloriesPer2oz)g"
        cell.proteinLabel.text = "Protein: \(model.protein)g"
        cell.carbsLabel.text = "Carbs: \(model.carbs)g"
        cell.fatsLabel.text = "Fats: \(model.fat)g"
        cell.fatsLabel.text = "Sugar: \(model.sugar)g"
        cell.delegate = self
        if let value = data[cell.type.rawValue] {
            cell.servingSizeLabel.text = "\(value)"
            cell.stepper.value = Double(value)
        }
        cell.setupCell()
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60 * 6
    }
}

extension CustomCoffeeMilks: MilkCellDelegate {
    func updated(value: Int, for milkType: MilkType) {
        data.updateValue(value, forKey: milkType.rawValue)
    }
}
