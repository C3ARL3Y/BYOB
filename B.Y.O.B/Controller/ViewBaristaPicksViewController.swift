//
//  ViewBaristaPicks.swift
//  B.Y.O.B
//
//  Created by Joriah Lasater on 2/18/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class ViewBaristaPicsViewController: UIViewController {
    
    // Fetch drinks from firebase 
    
    var drinksType: DrinkType!
    
    var drinks = [FIRDrinkModel]()
    
    lazy var createDrinkButton = UIButton().configured {
        $0.backgroundColor = .blue
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addTarget(self, action: #selector(createDrinkButtonPressed), for: .touchUpInside)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    func setupViews() {
        view.addSubview(createDrinkButton)
        createDrinkButton.anchor(top: nil, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor, padding: UIEdgeInsets(top: 0, left: 20, bottom: 20, right: 20), size: CGSize(width: 0, height: 60))
    }
    
    
    @objc func createDrinkButtonPressed() {
        present(CreateBaristaPicksViewController(), animated: true, completion: nil)
    }
}
