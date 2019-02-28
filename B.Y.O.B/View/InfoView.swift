//
//  InfoView.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/27/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

final class InfoView: UIView {
    
    let titleLabel = UILabel().configured {
        $0.text = "Title Label"
        $0.font = UIFont.boldSystemFont(ofSize: 20)
        $0.textColor = .tanTitle
    }
    
    var infoLabels = [UILabel]()
    
    init() {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(titleLabel)
        titleLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .zero, size: CGSize(width: 0, height: 40))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setTitle(with text: String) {
        titleLabel.text = text
    }
    
    func addInfo(with text: String) {
        let label = UILabel().configured {
            $0.text = text
            $0.textColor = UIColor.tanTitle.withAlphaComponent(0.8)
        }
        
        addSubview(label)
        
        label.anchor(top: infoLabels.last?.bottomAnchor ?? titleLabel.bottomAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: UIEdgeInsets.zero,
                     size: CGSize(width: 0, height: 50))
        
        infoLabels.append(label)
    }
}
