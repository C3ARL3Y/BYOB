//
//  MilkCell.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/25/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import Foundation


protocol MilkCellDelegate: class {
    func updated(value: Int, for milkType: MilkType)
}

final class MilkCell: AddedElementsCell {
    
    var type: MilkType!
    weak var delegate: MilkCellDelegate?
    
    override func handleWholeMilkStepper() {
        let value = stepper.value
        if value > 3 {
            stepper.value = 3
            return
        }
        
        var text = ""
        switch value {
        case 1:
            text = "light"
        case 2:
            text = "regular"
        case 3:
            text = "extra"
        default:
            text = "empty"
        }
        servingSizeLabel.text = text
        delegate?.updated(value: Int(value), for: type)
        
    }
}
