//
//  AppDelegate.swift
//  TheListOfСharacter
//
//  Created by viktor on 30.04.2022.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = AmiboListVC ()
        window?.makeKeyAndVisible()
        
        
        return true
    }

}
