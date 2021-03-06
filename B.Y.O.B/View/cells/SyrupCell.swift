//
//  SyrupCell.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/25/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import Foundation

protocol SyrupCellDelegate: class {
    func updated(value: Int, for syrupType: SyrupType)
}

final class SyrupCell: AddedElementsCell {
    
    var type: SyrupType!
    weak var delegate: SyrupCellDelegate?
    
    override func handleWholeMilkStepper() {
        let value = Int(stepper.value)
        if value == 0 {
            servingSizeLabel.text = "empty"
            return
        }
        servingSizeLabel.text = "\(value)"
        
        defer {
            delegate?.updated(value: Int(value), for: type)
        }
    }
}
