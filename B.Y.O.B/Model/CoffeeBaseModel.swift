//
//  CoffeeBaseModel.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/22/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import Foundation

struct CoffeeBaseModel {
    let name: String
    // Calories in Drink
    let tall: Int
    let grande: Int
    let venti: Int
    let type: CoffeeBaseType
}

extension CoffeeBaseModel {
    
    static func getStaticModels() -> [CoffeeBaseModel] {
        var result = [CoffeeBaseModel]()
        for type in CoffeeBaseType.allCases {
            result.append(getStaticModel(of: type))
        }
        return result
    }
    
    static func getStaticModel(of type: CoffeeBaseType) -> CoffeeBaseModel {
        switch type {
        case .hot_coffee:
            return CoffeeBaseModel(name: "Hot Coffee", tall: 0, grande: 0, venti: 0, type: type)
        case .americano_hot_iced:
            return CoffeeBaseModel(name: "Americano Hot/Iced", tall: 0, grande: 0, venti: 0, type: type)
        case .iced_coffee_unsweet:
            return CoffeeBaseModel(name: "Iced Coffee UNSWEET", tall: 0, grande: 0, venti: 0, type: type)
        case .plain_cold_brew:
            return CoffeeBaseModel(name: "Plain Cold Brew", tall: 0, grande: 0, venti: 0, type: type)
        case .green_iced_tea_unsweet:
            return CoffeeBaseModel(name: "Green Iced Tea UNSWEET", tall: 0, grande: 0, venti: 0, type: type)
        case .white_iced_tea_unsweet:
            return CoffeeBaseModel(name: "White Iced Tea UNSWEET", tall: 0, grande: 0, venti: 0, type: type)
        case .black_iced_tea_unsweet:
            return CoffeeBaseModel(name: "Black Iced Tea UNSWEET", tall: 0, grande: 0, venti: 0, type: type)
        case .passion_tango_iced_tea_unsweet:
            return CoffeeBaseModel(name: "Passion Tango Iced Tea UNSWEET", tall: 0, grande: 0, venti: 0, type: type)
        }
    }
}

enum CoffeeBaseType: String, CaseIterable {
    case hot_coffee
    case americano_hot_iced
    case iced_coffee_unsweet
    case plain_cold_brew
    case green_iced_tea_unsweet
    case white_iced_tea_unsweet
    case black_iced_tea_unsweet
    case passion_tango_iced_tea_unsweet
}
