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
    
    var milkModels = [MilkModel(name: "Whole Milk", caloriesPer2oz: 40, protein: 2, carbs: 3, fat: 2, sugar: 3),
                      MilkModel(name: "2% Milk", caloriesPer2oz: 30, protein: 2, carbs: 3, fat: 1.3, sugar: 3),
                      MilkModel(name: "1% Milk", caloriesPer2oz: 25, protein: 2, carbs: 3, fat: 0.75, sugar: 3)]
    
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
        tableView.register(AddedElementsCell.self, forCellReuseIdentifier: "cell")
    }
}

extension CustomCoffeeMilks: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return milkModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? AddedElementsCell {
            let model = milkModels[indexPath.row]
            cell.titleLabel.text = model.name
            cell.caloriesLabel.text = "Calories: \(model.caloriesPer2oz)"
            cell.proteinLabel.text = "Protein: \(model.protein)"
            cell.carbsLabel.text = "Carbs: \(model.carbs)"
            cell.fatsLabel.text = "Fats: \(model.fat)"
            cell.fatsLabel.text = "Sugar: \(model.sugar)"
            
            cell.setupCell()
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60 * 6
    }
}
