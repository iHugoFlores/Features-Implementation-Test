//
//  AppDelegate.swift
//  FeatureImplTest
//
//  Created by Hugo Flores Perez on 5/19/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController(rootViewController: LaunchingController())
        window?.makeKeyAndVisible()
        return true
    }
}
