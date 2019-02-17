//
//  CustomTabBarController.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 2/4/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
    }
    
    private func setupTabBar() {
        
        let baristaPicksVC = BaristaPicks()
        let baristaPicksNavController = UINavigationController(rootViewController: baristaPicksVC)
        baristaPicksNavController.tabBarItem.title = "Barista Picks"
        baristaPicksNavController.tabBarItem.image = UIImage(named: "BaristaPicksButtonImg")?.withRenderingMode(.alwaysOriginal)
        
        let customizeVC = Customize()
        let customizeNavController = UINavigationController(rootViewController: customizeVC)
        customizeNavController.tabBarItem.title = "Customize"
        customizeNavController.tabBarItem.image = UIImage(named: "CustomizeButtonImg")?.withRenderingMode(.alwaysOriginal)
        
        let favoritesVC = Favorites()
        let favoritesNavController = UINavigationController(rootViewController: favoritesVC)
        favoritesNavController.tabBarItem.title = "Favorites"
        favoritesNavController.tabBarItem.image = UIImage(named: "FavoritesButtonImg")?.withRenderingMode(.alwaysOriginal)
        
        let alexMoeVC = AlexMoe()
        let alexMoeNavController = UINavigationController(rootViewController: alexMoeVC)
        alexMoeNavController.tabBarItem.title = "Alex Moe"
        alexMoeNavController.tabBarItem.badgeColor = UIColor.yellow
        alexMoeNavController.tabBarItem.image = UIImage(named: "AlexMoeButtonImg")?.withRenderingMode(.alwaysOriginal)
        
        viewControllers = [baristaPicksNavController, customizeNavController, favoritesNavController, alexMoeNavController]
        
        self.tabBar.barTintColor = UIColor(red: 175/255, green: 136/255, blue: 117/255, alpha: 1)
    }
    
}
