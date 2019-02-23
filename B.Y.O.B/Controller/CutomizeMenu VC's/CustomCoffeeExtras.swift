//
//  CustomCoffeeExtras.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 2/12/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class CustomCoffeeExtras: CustomCoffeeParentViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coffeeBaseTitle.text = "Coffee Base"
        nextViewController = CustomCoffeeMilks()
    }
    
    override func setupDelegates() {
        tableView.delegate = self
    }
    
    override func setupDataSources() {
        tableView.dataSource = self
    }
    
    override func tableViewRegisterCells() {
        tableView.register(ExtrasCell.self, forCellReuseIdentifier: "cell")
    }
}

extension CustomCoffeeExtras: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ExtrasCell {
            cell.setupCell()
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40 * 5
    }
}

    
