//
//  CustomSyrups.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 2/10/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class CustomCoffeeSyrups: CustomCoffeeParentViewController {
    
    let servingSizeLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Nutrients = Per Pump"
        label.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        label.textAlignment = .center
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        
        return label
    }()
    
    var syrupModels = [SyrupModel(name: "Vanilla", calories: 1, protein: 0, carbs: 0.25, fat: 0, sugar: 0),
                       SyrupModel(name: "Cinnamon Dolce", calories: 0, protein: 0, carbs: 0, fat: 0, sugar: 0)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coffeeBaseTitle.text = "Syrups"
        nextViewController = CustomCoffeeExtras()
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

extension CustomCoffeeSyrups: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return syrupModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? AddedElementsCell {
            let model = syrupModels[indexPath.row]
            cell.titleLabel.text = model.name
            cell.caloriesLabel.text = "Calories: \(model.calories)"
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

