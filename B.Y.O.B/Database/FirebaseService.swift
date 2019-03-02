//
//  FirebaseService.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/19/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import Firebase
import UIKit
struct FirebaseService {
    private static let REF_DRINKS = Database.database().reference().child("drinks")
    private static let REF_EMAILS = Database.database().reference().child("emails")
    private static let REF_IMAGES = Storage.storage().reference().child("images")
}

// Upload data
extension FirebaseService {
    static func setDrink(uuid: String?, name: String, image: UIImage?, description: String, nutrients: FIRNutrientsModel?, steps: [String], type: DrinkType, imageURL: String?) {
        let uid = uuid ?? UUID().uuidString
        
        var nutrientsData = [String: Int]()
        let typeValue = type.rawValue
        
        if let nutrients = nutrients {
            nutrientsData = FIRNutrientsModel.dict(from: nutrients)
        }
        
        var data: [String: Any] = ["name": name,
                                   "description": description,
                                   "steps": steps,
                                   "imageURL": imageURL ?? "",
                                   "nutrients": nutrientsData,
                                   "type": typeValue]
        
        if let image = image {
            upload(image: image) { imageUrl in
                data.updateValue(imageUrl, forKey: "imageURL")
                REF_DRINKS.child(typeValue).child(uid).setValue(data)
                return
            }
        } else {
             REF_DRINKS.child(typeValue).child(uid).setValue(data)
        }
    }
    
    static func upload(image: UIImage, completion: @escaping (String)->()) {
        guard let imageData = image.jpegData(compressionQuality: 0.1) else {
            completion("")
            return
        }
        
        let photoIdString = UUID().uuidString
        let ref = REF_IMAGES.child(photoIdString)
        
        ref.putData(imageData, metadata: nil) { (metadata, error) in
            if error != nil {
                print(error?.localizedDescription)
                return
            }
            ref.downloadURL(completion: { (url, _) in
                completion(url?.absoluteString ?? "")
            })
        }
    }
    
    static func upload(emailAddress: String) {
        // query last
        REF_EMAILS.queryLimited(toLast: 1).observeSingleEvent(of: .value) { (snapshot) in
            if let value = snapshot.value.unsafelyUnwrapped as? [String: String] {
                if let key = value.keys.first {
                    if let index = Int(key) {
                        REF_EMAILS.child(String(index + 1)).setValue(emailAddress)
                    }
                }
            }
        }
    }
}

// Fetch data
extension FirebaseService {
    
    static func fetchDrinks(of type: DrinkType, completion: @escaping (FIRDrinkModel)->()) {
        REF_DRINKS.child(type.rawValue).queryOrderedByKey().observe(.value) { (snapshot) in
            if let value = snapshot.value as? [String: Any]{
                for key in value.keys {
                    if let dict = value[key] as? [String: Any] {
                        let model = FIRDrinkModel.model(from: dict, with: key)
                        completion(model)
                    }
                }
            }
        }
    }
}

// Delete data
extension FirebaseService {
    
    static func deleteDrink(of type: String, with uuid: String) {
        REF_DRINKS.child(type).child(uuid).removeValue()
    }
}
