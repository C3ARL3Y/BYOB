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
    let steps: [String]
    let type: String 
}

extension FIRDrinkModel {
    static func model(from dict: [String: Any], with uuid: String) -> FIRDrinkModel {
        
        let name = dict["name"] as? String ?? "No name"
        let imageURL = dict["imageURL"] as? String ?? ""
        let description = dict["description"] as? String ?? ""
        let nutrients = dict["nutrients"] as? [String: Int] ?? [:]
        let steps = dict["steps"] as? [String] ?? []
        let type = dict["type"] as? String ?? "hot"
        
        return FIRDrinkModel(uid: uuid, name: name, imageURL: imageURL, description: description, nutrients: nutrients, steps: steps, type: type)
    }
    
    static func dict(from model: FIRDrinkModel) -> [(String, Any)] {
        var dict = [(String, Any)]()
        dict.append(("[DESCRIPTION]", ""))
        dict.append(("description", forKey: model.description))
        dict.append(("[NUTRITION FACTS]", ""))
        for (key, value) in model.nutrients {
            dict.append((key, value))
        }
        dict.append(("[HOW TO ORDER]", ""))
        for (index, step) in model.steps.enumerated() {
            dict.append(("Step " + String(index+1), step))
        }
        return dict
    }
}
