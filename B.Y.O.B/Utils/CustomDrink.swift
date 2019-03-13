//
//  CustomDrink.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 3/13/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import Foundation
struct CustomDrink {
    public static func loadCustomDrink() -> UDDrinkModel? {
        let standard = UserDefaults.standard
        
        let uid = UUID()
        var baseType: CoffeeBaseType?
        var milkServings = [MilkType: Int]()
        var syrupServings = [SyrupType: Int]()
        var extraType: ExtraType = .empty
        let name = standard.value(forKey: "name") as? String
        
        for key in UDKeys.allCases {
            let stringKey = key.rawValue
            if standard.value(forKey: stringKey) != nil {
                // Has data
                if let stringValue = standard.value(forKey: stringKey) as? String {
                    if let coffeeBase = CoffeeBaseType.init(rawValue: stringValue) {
                        baseType = coffeeBase
                    } else if let extras = ExtraType.init(rawValue: stringValue) {
                        extraType = extras
                    } else {
                        
                    }
                }
                
                if let dict = standard.value(forKey: stringKey) as? [String: Int] {
                    for (stringValue, numberOfServings) in dict {
                        if let type = MilkType.init(rawValue: stringValue) {
                            milkServings.updateValue(numberOfServings, forKey: type)
                        } else if let type = SyrupType.init(rawValue: stringValue) {
                            syrupServings.updateValue(numberOfServings, forKey: type)
                        }
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
