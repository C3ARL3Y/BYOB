//
//  CustomCoffeeBase.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 2/6/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class CustomCoffeeBase: CustomCoffeeParentViewController {
    
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
        tableView.register(CoffeeBaseCell.self, forCellReuseIdentifier: "cell")
    }
}

extension CustomCoffeeBase: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CoffeeBaseCell {
            cell.setupCell()
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40 * 5
    }
}

