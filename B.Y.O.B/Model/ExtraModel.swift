//
//  ExtraModel.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/23/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import Foundation

struct ExtraModel {
    let name: String
    let calories: Float
    let protein: Float
    let carbs: Float
    let fat: Float
    let sugar: Float
    let type: ExtraType
}

enum ExtraType: String, CaseIterable {
    case light_caramel_drizzle
    case light_mocha_drizzle
    case cinnamon_powder
    case suger_free_cold_foam
}


extension ExtraModel {
    static func getStaticModels() -> [ExtraModel] {
        var result = [ExtraModel]()
        for type in ExtraType.allCases {
            result.append(getStaticModel(of: type))
        }
        return result
    }
    
    static func getStaticModel(of type: ExtraType) -> ExtraModel {
        switch type {
        case .light_caramel_drizzle:
            return ExtraModel(name: "Light Caramel Drizzle", calories: 17, protein: 0, carbs: 3, fat: 0.5, sugar: 2, type: type)
        case .light_mocha_drizzle:
            return ExtraModel(name: "Light Mocha Drizzle", calories: 13, protein: 0, carbs: 2, fat: 0.5, sugar: 1, type: type)
        case .cinnamon_powder:
            return ExtraModel(name: "Cinnamon Powder", calories: 0, protein: 0, carbs: 0, fat: 0, sugar: 0, type: type)
        case .suger_free_cold_foam:
            return ExtraModel(name: "Sugar Free Cold Foam", calories: 12, protein: 1, carbs: 2, fat: 0, sugar: 1, type: type)
        }
    }
    
    
}
