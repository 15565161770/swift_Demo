//
//  AppDelegate.swift
//  Swift_New
//
//  Created by 仝兴伟 on 2018/4/10.
//  Copyright © 2018年 仝兴伟. All rights reserved.
//

import UIKit
import SwiftTheme
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        /// 设置 tabBar tintColor
        UITabBar.appearance().theme_tintColor = "colors.tabbarTintColor"
        UITabBar.appearance().theme_barTintColor = "colors.cellBackgroundColor"
        // 使用Theme皮肤框架
        ThemeManager.setTheme(plistName: UserDefaults.standard.bool(forKey: isNight) ? "night_theme" : "default_theme", path: .mainBundle)
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        window?.makeKeyAndVisible()
        window?.rootViewController = MyTabBarController()
        
        /// 设置navigation tintColor
        UINavigationBar.appearance().theme_tintColor = "colors.black"
        UINavigationBar.appearance().setBackgroundImage(UIImage(named: "navigation_background" + (UserDefaults.standard.bool(forKey: isNight) ? "_night" : "")), for: .default)
        return true
    }

}

