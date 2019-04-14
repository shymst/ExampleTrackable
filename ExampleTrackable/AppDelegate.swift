//
//  AppDelegate.swift
//  ExampleAnalytics
//
//  Created by Shunya Yamashita on 2019/04/14.
//  Copyright © 2019 Shunya Yamashita. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupUI()
        return true
    }
    
    private func setupUI() {
        let mostViewedViewController = UINavigationController(rootViewController: MostViewedViewController())
        mostViewedViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .mostViewed, tag: 1)
        let favoritesViewController = UINavigationController(rootViewController: FavoritesViewController())
        favoritesViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 2)
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [
            mostViewedViewController,
            favoritesViewController
        ]
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }
}

