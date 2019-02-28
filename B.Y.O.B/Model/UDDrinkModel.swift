//
//  UDDrinkModel.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/25/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import Foundation

struct UDDrinkModel {
    let uid: UUID
    let baseType: CoffeeBaseType
    let milkServings: [MilkType: Int]
    let syrupServings: [SyrupType: Int]
    let extraType: ExtraType
}
