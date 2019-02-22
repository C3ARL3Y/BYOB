//
//  Configurable.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/18/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

protocol Configurable {}

extension Configurable {
    func configured(using configurationHandler: (Self) -> Void) -> Self {
        configurationHandler(self)
        return self
    }
}

extension UIView: Configurable {}
extension UICollectionViewFlowLayout: Configurable {}
extension UIViewController: Configurable {}
