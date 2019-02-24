//
//  CoffeeMilkCell.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/22/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//


import UIKit

class AddedElementsCell: UITableViewCell {
    
    let titleLabel = InfoLabel().configured {
        $0.font = UIFont.boldSystemFont(ofSize: 21)
    }
    let caloriesLabel = InfoLabel()
    let proteinLabel = InfoLabel()
    let carbsLabel = InfoLabel()
    let fatsLabel = InfoLabel()
    let sugarLabel = InfoLabel()
    
    lazy var milkStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.addTarget(self, action: #selector(handleWholeMilkStepper), for: .valueChanged)
        stepper.backgroundColor = UIColor.white
        stepper.tintColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        
        return stepper
    }()
    
    let milkServingLabel = UILabel().configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = UIColor.white
        $0.layer.cornerRadius = 5
        $0.layer.masksToBounds = true
        $0.layer.borderColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1).cgColor
        $0.textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        $0.layer.borderWidth = 1
        $0.textAlignment = .center
        $0.text = "0"
    }
    
    @objc func handleWholeMilkStepper() {
        milkServingLabel.text = "\(Int(milkStepper.value))"
        
    }
    
    func setupCell() {
        setupViews()
    }
    
    func setupViews() {
        addSubview(titleLabel)
        addSubview(caloriesLabel)
        addSubview(proteinLabel)
        addSubview(carbsLabel)
        addSubview(fatsLabel)
        addSubview(sugarLabel)
        addSubview(milkStepper)
        addSubview(milkServingLabel)
        
        milkStepper.anchor(top: centerYAnchor, leading: caloriesLabel.trailingAnchor, bottom: nil, trailing: nil, padding: UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5), size: CGSize(width: 75, height: 50))
        
        milkServingLabel.anchor(top: milkStepper.topAnchor, leading: milkStepper.trailingAnchor, bottom: nil, trailing: nil, padding: UIEdgeInsets(top: -7, left: 30, bottom: 0, right: 0), size: CGSize(width: 50, height: 50))
        
        var recentLabel: UILabel?
        
        [titleLabel, caloriesLabel, proteinLabel, carbsLabel, fatsLabel, sugarLabel].forEach {
            if let recentLabel = recentLabel {
                $0.anchor(top: recentLabel.bottomAnchor, leading: leadingAnchor, bottom: nil, trailing: centerXAnchor, padding: UIEdgeInsets(top: 5, left: 10, bottom: 0, right: 0), size: CGSize(width: 0, height: 50))
            } else {
                $0.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: UIEdgeInsets(top: 5, left: 10, bottom: 0, right: 0), size: CGSize(width: 0, height: 50))
                
            }
            recentLabel = $0
        }
        
    }
}
