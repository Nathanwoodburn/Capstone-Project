//
//  AppDelegate.swift
//  AlarmPrototype
//
//  Created by Cameron Palmer on 29/7/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        UITabBar.appearance().backgroundImage = UIImage.from(color: UIColor(red: 0, green: 0, blue: 0, alpha: 0.2))
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().tintColor = .green
        UITabBar.appearance().unselectedItemTintColor = .white
        
//        extension UIImage {
//            static func from(color: UIColor) -> UIImage {
//                let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
//                UIGraphicsBeginImageContext(rect.size)
//                let context = UIGraphicsGetCurrentContext()
//                context!.setFillColor(color.cgColor)
//                context!.fill(rect)
//                let img = UIGraphicsGetImageFromCurrentImageContext()
//                UIGraphicsEndImageContext()
//                return img!
//            }
//        }
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

}

