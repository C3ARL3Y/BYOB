//
//  FIRNutrientsModel.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/18/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import Foundation

struct FIRNutrientsModel: Codable {
    // measure with g
    let calories: Int
    let protein: Int
    let carbs: Int
    let fats: Int
    let sugar: Int
    // measure with mg
    let caffeine: Int
}

extension FIRNutrientsModel {
    static func model(from data: [String: Int]) -> FIRNutrientsModel {
        let calories = data["calories"] ?? 0
        let protein = data["protein"] ?? 0
        let carbs = data["carbs"] ?? 0
        let fats = data["fats"] ?? 0
        let sugar = data["sugar"] ?? 0
        let caffeine = data["caffeine"] ?? 0
        
        return FIRNutrientsModel(calories: calories, protein: protein, carbs: carbs, fats: fats, sugar: sugar, caffeine: caffeine)
    }
    
    static func dict(from model: FIRNutrientsModel) -> [String: Int] {
        var dict = [String: Int]()
        dict.updateValue(model.calories, forKey: "calories")
        dict.updateValue(model.protein, forKey: "protein")
        dict.updateValue(model.carbs, forKey: "carbs")
        dict.updateValue(model.fats, forKey: "fats")
        dict.updateValue(model.sugar, forKey: "sugar")
        dict.updateValue(model.caffeine, forKey: "caffeine")
        return dict
    }
}
