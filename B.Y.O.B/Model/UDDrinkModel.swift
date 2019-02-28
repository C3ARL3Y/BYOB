//
//  UDDrinkModel.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/25/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import Foundation

struct UDDrinkModel {
    var name: String?
    let uid: UUID
    let baseType: CoffeeBaseType
    let milkServings: [MilkType: Int]
    let syrupServings: [SyrupType: Int]
    let extraType: ExtraType
}

extension UDDrinkModel {
    func convertToData() -> [String: Any] {
        var data = [String: Any]()
        data.updateValue(uid.uuidString, forKey: "uid")
        data.updateValue(baseType.rawValue, forKey: UDKeys.baseDrink.rawValue)
        if let name = name {
            data.updateValue(name, forKey: "name")
        }
        
        var milk = [String: Int]()
        for (milkType, servings) in milkServings {
            milk.updateValue(servings, forKey: milkType.rawValue)
        }
        data.updateValue(milk, forKey: UDKeys.milk.rawValue)
        
        var syrup = [String: Int]()
        for (syrupType, servings) in syrupServings {
            syrup.updateValue(servings, forKey: syrupType.rawValue)
        }
        data.updateValue(syrup, forKey: UDKeys.syrup.rawValue)
        
        data.updateValue(extraType.rawValue, forKey: UDKeys.extras.rawValue)
        return data
    }
    
    static func convert(from data: [String: Any]) -> UDDrinkModel? {
        let uid = UUID()
        var baseType: CoffeeBaseType?
        var milkServings = [MilkType: Int]()
        var syrupServings = [SyrupType: Int]()
        var extraType: ExtraType = .empty
        let name = data["name"] as? String
        for key in UDKeys.allCases {
            let stringKey = key.rawValue
                // Has data
                if let stringValue = data[stringKey] as? String {
                    if let coffeeBase = CoffeeBaseType.init(rawValue: stringValue) {
                        baseType = coffeeBase
                    } else if let extras = ExtraType.init(rawValue: stringValue) {
                        extraType = extras
                    } else {
                        
                    }
                }
                
                if let dict = data[stringKey] as? [String: Int] {
                    for (stringValue, numberOfServings) in dict {
                        if let type = MilkType.init(rawValue: stringValue) {
                            milkServings.updateValue(numberOfServings, forKey: type)
                        } else if let type = SyrupType.init(rawValue: stringValue) {
                            syrupServings.updateValue(numberOfServings, forKey: type)
                        }
                    }
                }
        }
        
        if let baseType = baseType {
            let drinkModel = UDDrinkModel(name: name, uid: uid, baseType: baseType, milkServings: milkServings, syrupServings: syrupServings, extraType: extraType)
            return drinkModel
        }
        return nil 
    }
}
