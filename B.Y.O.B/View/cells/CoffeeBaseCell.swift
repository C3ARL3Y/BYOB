//
//  CoffeeBaseCell.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/22/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

protocol SelectedCheckBoxDelegate: class {
    func selected(cell: UITableViewCell)
}

class CoffeeBaseCell: UITableViewCell {
    
    let titleLabel = InfoLabel().configured {
        $0.font = UIFont.boldSystemFont(ofSize: 21)
    }
    
    lazy var checkBox = UIButton().configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setImage(UIImage(named: "UnCheckbox"), for: .normal)
        $0.setImage(UIImage(named: "Checkbox"), for: .selected)
        $0.addTarget(self, action: #selector(checkBoxPressed), for: .touchUpInside)
    }
    
    let tallLabel = InfoLabel()
    let grandeLabel = InfoLabel()
    let ventiLabel = InfoLabel()
    var coffeeBaseModel: CoffeeBaseModel!
    weak var delegate: SelectedCheckBoxDelegate?
    
    func setupCell() {
        setupCellView()
        selectionStyle = .none
        titleLabel.text = coffeeBaseModel.name
        tallLabel.text = "Tall: \(coffeeBaseModel.tall) Calories"
        grandeLabel.text = "Grande: \(coffeeBaseModel.grande) Calories"
        ventiLabel.text = "Venti: \(coffeeBaseModel.venti) Calories"
        // update UI with coffeebaseModel values
    }
    
    @objc func checkBoxPressed() {
        checkBox.isSelected = true
        delegate?.selected(cell: self)
    }
    
    private func setupCellView() {
        addSubview(titleLabel)
        addSubview(checkBox)
        addSubview(tallLabel)
        addSubview(grandeLabel)
        addSubview(ventiLabel)
        
        titleLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: UIEdgeInsets(top: 5, left: 10, bottom: 0, right: 10), size: CGSize(width: 0, height: 50))
        
        checkBox.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        checkBox.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40).isActive = true
        checkBox.heightAnchor.constraint(equalToConstant: 40).isActive = true
        checkBox.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        tallLabel.anchor(top: titleLabel.bottomAnchor, leading: titleLabel.leadingAnchor, bottom: nil, trailing: centerXAnchor, size: CGSize(width: 0, height: 50))
        grandeLabel.anchor(top: tallLabel.bottomAnchor, leading: titleLabel.leadingAnchor, bottom: nil, trailing: centerXAnchor, size: CGSize(width: 0, height: 50))
        ventiLabel.anchor(top: grandeLabel.bottomAnchor, leading: titleLabel.leadingAnchor, bottom: nil, trailing: centerXAnchor, size: CGSize(width: 0, height: 50))
    }
}
