//
//  MilkModel.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/23/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import Foundation

struct MilkModel {
    let name: String
    let caloriesPer2oz: Float
    let protein: Float
    let carbs: Float
    let fat: Float
    let sugar: Float
    let type: MilkType
}

extension MilkModel {
    static func getStaticModel(of type: MilkType) -> MilkModel {
        switch type {
        case .whole_milk:
            return MilkModel(name: "Whole Milk: 2oz", caloriesPer2oz: 40, protein: 2, carbs: 3, fat: 2, sugar: 3, type: type)
        case .milk_2_percent:
            return MilkModel(name: "2% Milk: 2oz", caloriesPer2oz: 30, protein: 2, carbs: 3, fat: 1.3, sugar: 3, type: type)
        case .milk_1_percent:
            return MilkModel(name: "1% Milk: 2oz", caloriesPer2oz: 25, protein: 2, carbs: 3, fat: 0.75, sugar: 3, type: type)
        case .non_fat:
            return MilkModel(name: "Nonfat (skim): 2oz", caloriesPer2oz: 20, protein: 2, carbs: 3, fat: 0, sugar: 3, type: type)
        case .half_and_half:
            return MilkModel(name: "Hald and Half: 2oz", caloriesPer2oz: 35, protein: 0, carbs: 1, fat: 3, sugar: 1, type: type)
        case .heavy_cream:
            return MilkModel(name: "Heavy Cream: 2oz", caloriesPer2oz: 90, protein: 0, carbs: 0, fat: 9, sugar: 0, type: type)
        }
    }
    
    static func getStaticModels() -> [MilkModel] {
        var result = [MilkModel]()
        for type in MilkType.allCases {
            result.append(getStaticModel(of: type))
        }
        return result
    }
}

enum MilkType: String, CaseIterable {
    case whole_milk
    case milk_2_percent
    case milk_1_percent
    case non_fat
    case half_and_half
    case heavy_cream
    // Non dair milk and so on
}
