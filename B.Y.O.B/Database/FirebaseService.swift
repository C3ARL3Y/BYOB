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
    private static let REF_IMAGES = Storage.storage().reference().child("images")
    
    static func setDrink(uuid: String?, name: String, image: UIImage, description: String, nutrients: FIRNutrientsModel?, steps: [String]) {
        let uid = uuid ?? UUID().uuidString
        
        upload(image: image) { imageUrl in
            
            var nutrientsData = [String: Int]()
            
            if let nutrients = nutrients {
                nutrientsData = FIRNutrientsModel.dict(from: nutrients)
            }
            
            let data: [String: Any] = ["name": name,
                                       "description": description,
                                       "steps": steps,
                                       "imageUrl": imageUrl,
                                       "nutrients": nutrientsData]
            
            REF_DRINKS.child(uid).setValue(data)
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
}
