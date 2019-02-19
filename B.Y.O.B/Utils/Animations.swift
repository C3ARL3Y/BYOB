//
//  Animations.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/19/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

struct Animations {
    
    static func fadeOut(view: UIView) {
        UIView.animate(withDuration: 1.0, animations: {
            view.alpha = 0.0
        }) { (_) in
            view.isHidden = true
        }
    }
    
    static func fadeIn(view: UIView) {
        view.isHidden = false
        UIView.animate(withDuration: 1.0) {
            view.alpha = 1.0
        }
    }
    
    static func identity(view: UIView) {
        UIView.animate(withDuration: 1.0) {
            view.transform = .identity
        }
    }
    
    
    static func move(view: UIView, x: CGFloat, y: CGFloat) {
        UIView.animate(withDuration: 1.0) {
            view.transform = CGAffineTransform.init(translationX: x, y: y)
        }
    }
}
