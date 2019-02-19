//
//  DrinkModel.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/18/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import Foundation

struct FIRDrinkModel: Decodable {
    let uid: String
    let name: String
    let imageURL: String
    let description: String
    let nutrients: [String: Int] // Possibly use FIRNutrientsModel
    let orderSteps: [String]
}
