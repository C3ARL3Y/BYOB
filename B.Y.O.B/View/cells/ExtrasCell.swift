//
//  ExtrasCell.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/22/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class ExtrasCell: UITableViewCell {
    
    let label = UILabel().configured {
        $0.font = UIFont.boldSystemFont(ofSize: 25)
        $0.textAlignment = .center
        $0.text = "Light Caramel Drizzle"
        $0.lineBreakMode = .byWordWrapping
        $0.numberOfLines = 2
    }
    
    let checkBox = UIButton().configured {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setImage(UIImage(named: "UnCheckbox"), for: .normal)
        $0.setImage(UIImage(named: "Checkbox"), for: .selected)
        $0.addTarget(self, action: #selector(checkBoxPressed), for: .touchUpInside)
    }
    
    @objc func checkBoxPressed() {
        
    }
    
    func setupCell() {
        setupViews()
    }
    
    private func setupViews() {
        addSubview(label)
        addSubview(checkBox)
        
        label.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: centerXAnchor, padding: UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0))
        checkBox.anchor(top: nil, leading: nil, bottom: nil, trailing: trailingAnchor, padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: frame.size.width/5), size: CGSize(width: 50, height: 50))
        checkBox.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}
