//
//  CustomCoffeeExtras.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 2/12/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class CustomCoffeeExtras: CustomCoffeeParentViewController {
    
    var selectedCell: ExtrasCell?
    
    var extraModels = ExtraModel.getStaticModels()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coffeeBaseTitle.text = "Extras"
        nextViewController = CustomCoffeeMilks()
    }
    
    override func setupDelegates() {
        tableView.delegate = self
    }
    
    override func setupDataSources() {
        tableView.dataSource = self
    }
    
    override func tableViewRegisterCells() {
        tableView.register(ExtrasCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func handleSave() {
        guard let selectedModel = selectedCell?.extraModel else {
            return
        }
        UserDefaults.standard.setValue(selectedModel.type.rawValue, forKey: UDKeys.extras.rawValue)
    }
    override func handleNext() {
        
        // Save data to database
        
        if selectedCell != nil {
            handleSave()
            UIApplication.shared.keyWindow?.rootViewController?.dismiss(animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Please Select an Extra", message: "", preferredStyle: .alert)
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

extension CustomCoffeeExtras: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return extraModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ExtrasCell()
        let model = extraModels[indexPath.row]
        cell.label.text = model.name
        cell.setupCell()
        cell.delegate = self
        cell.extraModel = model
        if let selectedCell = selectedCell {
            if selectedCell.extraModel.type == model.type {
                cell.checkBoxPressed()
            }
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40 * 5
    }
}


extension CustomCoffeeExtras: SelectedCheckBoxDelegate {
    func selected(cell: UITableViewCell) {
        if let cell = cell as? ExtrasCell {
            if let selectedCell = selectedCell {
                selectedCell.checkBox.isSelected = false
            }
            selectedCell = cell
        }
    }
}

