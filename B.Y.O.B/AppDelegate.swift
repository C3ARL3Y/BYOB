//
//  AppDelegate.swift
//  B.Y.O.B
//
//  Created by Julian Cearley on 1/29/19.
//  Copyright © 2019 Cearley Software. All rights reserved.
//

import UIKit
import Firebase
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    // 0-1-2-3-4 pumps is how this will selected
    var vanillaSyrupPumps = UserDefaults.standard.integer(forKey: "vanillaSyrupPumps")
    var caramelSyrupPumps = UserDefaults.standard.integer(forKey: "caramelSyrupPumps")
    var hazelnutSyrupPumps = UserDefaults.standard.integer(forKey: "hazelnutSyrupPumps")
    var toffeeNutSyrupPumps = UserDefaults.standard.integer(forKey: "toffeeNutSyrupPumps")
    var cinnamonDolceSyrupPumps = UserDefaults.standard.integer(forKey: "cinnamonDolceSyrupPumps")
    var peppermintSyrupPumps = UserDefaults.standard.integer(forKey: "peppermintSyrupPumps")
    var raspberrySyrupPumps = UserDefaults.standard.integer(forKey: "raspberrySyrupPumps")
    var classicSyrupPumps = UserDefaults.standard.integer(forKey: "classicSyrupPumps")
    var cascaraSyrupPumps = UserDefaults.standard.integer(forKey: "cascaraSyrupPumps")
    var whiteMochaSyrupPumps = UserDefaults.standard.integer(forKey: "whiteMochaSyrupPumps")
    var mochaSyrupPumps = UserDefaults.standard.integer(forKey: "mochaSyrupPumps")
    var sugarFreeVanillaSyrupPumps = UserDefaults.standard.integer(forKey: "sugarFreeVanillaSyrupPumps")
    var sugarFreeCinnamonDolceSyrupPumps = UserDefaults.standard.integer(forKey: "sugarFreeCinnamonDolceSyrupPumps")
    var pumpkinSpiceSyrupPumps = UserDefaults.standard.integer(forKey: "pumpkinSpiceSyrupPumps")
    var gingerbreadSyrupPumps = UserDefaults.standard.integer(forKey: "gingerbreadSyrupPumps")
    var caramelBruleeSyrupPumps = UserDefaults.standard.integer(forKey: "caramelBruleeSyrupPumps")
    var toastedWhiteMochaSyrupPumps = UserDefaults.standard.integer(forKey: "toastedWhiteMochaSyrupPumps")
    
    // 0-1-2-3 none-light-normal-extra is how this will be served
    var lightCaramelDrizzleServing = UserDefaults.standard.integer(forKey: "lightCaramelDrizzleServing")
    var lightMochaDrizzleServing = UserDefaults.standard.integer(forKey: "lightMochaDrizzleServing")
    var cinnamonPowderServing = UserDefaults.standard.integer(forKey: "cinnamonPowderServing")
    var sugarFreeColdFoamServing = UserDefaults.standard.integer(forKey: "sugarFreeColdFoamServing")
    
    var wholeMilkServing = UserDefaults.standard.integer(forKey: "wholeMilkServing")
    var twoPercentMilkServing = UserDefaults.standard.integer(forKey: "twoPercentMilkServing")
    var onePercentMilkServing = UserDefaults.standard.integer(forKey: "onePercentMilkServing")
    var nonFatSkimMilkServing = UserDefaults.standard.integer(forKey: "nonFatSkimMilkServing")
    var halfAndHalfServing = UserDefaults.standard.integer(forKey: "halfAndHalfServing")
    var heavyCreamServing = UserDefaults.standard.integer(forKey: "heavyCreamServing")
    var coconutMilkServing = UserDefaults.standard.integer(forKey: "coconutMilkServing")
    var  almondMilkServing = UserDefaults.standard.integer(forKey: "almondMilkServing")
    var soyMilkServing = UserDefaults.standard.integer(forKey: "soyMilkServing")
    
    // base drinks
    var coffeeBase = UserDefaults.standard.string(forKey: "coffeeBase")
    
    //variables to check for the blank menu
    var noSyrups = UserDefaults.standard.bool(forKey: "noSyrups")
    var noExtras = UserDefaults.standard.bool(forKey: "noExtras")
    var noMilks = UserDefaults.standard.bool(forKey: "noMilks")
    var noCoffeeBase = UserDefaults.standard.bool(forKey: "noCoffeeBase")


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        window?.rootViewController = BaristaPicks()
        
        UINavigationBar.appearance().barTintColor = UIColor(red: 175/255, green: 136/255, blue: 117/255, alpha: 1)
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        //UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Chalkduster", size: 10)!], for: .normal)
        //UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Chalkduster", size: 10)!], for: .selected)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor(red: 255/255, green: 218/255, blue: 185/255, alpha: 1)], for: .selected)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)
        FirebaseApp.configure()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        noSyrups = true
        UserDefaults.standard.set(true, forKey: "noSyrups")
        noExtras = true
        UserDefaults.standard.set(true, forKey: "noExtras")
        noMilks = true
        UserDefaults.standard.set(true, forKey: "noMilks")
        noCoffeeBase = true
        UserDefaults.standard.set(true, forKey: "noCoffeeBase")
        UserDefaults.standard.synchronize()
    }


}

