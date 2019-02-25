//
//  SyrupModel.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/23/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import Foundation
struct SyrupModel {
    let name: String
    let calories: Float
    let protein: Float
    let carbs: Float
    let fat: Float
    let sugar: Float
    let type: SyrupType
}

extension SyrupModel {
    static func getStaticModel(of type: SyrupType) -> SyrupModel {
        switch type {
        case .vanilla:
            return SyrupModel(name: "Vanilla", calories: 1, protein: 0, carbs: 0.25, fat: 0, sugar: 0, type: type)
        case .cinnamon_dolce:
            return SyrupModel(name: "Cinnamon Dolce", calories: 0, protein: 0, carbs: 0, fat: 0, sugar: 0, type: type)
        case .pumpkin_spice:
            return SyrupModel(name: "Pumpkin Spice", calories: 0, protein: 0, carbs: 0, fat: 0, sugar: 0, type: type)
        case .ginger_bread:
            return SyrupModel(name: "Gingerbread", calories: 24, protein: 0, carbs: 5.5, fat: 0, sugar: 5, type: type)
        case .caramel_brulee:
            return SyrupModel(name: "Caramel Brulee", calories: 0, protein: 0, carbs: 0, fat: 0, sugar: 0, type: type)
        case .toasted_white_mocha:
            return SyrupModel(name: "Toasted White Mocha", calories: 70, protein: 1.5, carbs: 11, fat: 1.5, sugar: 11, type: type)
        }
    }
    
    static func getStaticModels() -> [SyrupModel] {
        var result = [SyrupModel]()
        for type in SyrupType.allCases {
            result.append(getStaticModel(of: type))
        }
        return result
    }
}

enum SyrupType: String, CaseIterable {
    case vanilla
    case cinnamon_dolce
    case pumpkin_spice
    case ginger_bread
    case caramel_brulee
    case toasted_white_mocha
    // Non dair milk and so on
}
