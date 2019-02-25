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
        super.handleWholeMilkStepper()
        delegate?.updated(value: Int(stepper.value), for: type)
    }
}
