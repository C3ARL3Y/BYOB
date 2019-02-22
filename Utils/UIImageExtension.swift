//
//  UIImageExtension.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/20/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

extension UIImage {
    static func from(imageURL: String, completion: @escaping (UIImage)->()) {
        DispatchQueue.global(qos: .userInitiated).async {
            guard let url = URL(string: imageURL), let data = try? Data(contentsOf: url), let image = UIImage(data: data) else {
                return
            }
            DispatchQueue.main.async {
                completion(image)
            }
        }
    }
}
