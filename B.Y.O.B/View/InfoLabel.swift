//
//  InfoLabel.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/22/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class InfoLabel: UILabel {
    
    init() {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        text = "Element name"
        textColor = UIColor(red: 52/255, green: 30/255, blue: 21/255, alpha: 1)
        textAlignment = .left
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
