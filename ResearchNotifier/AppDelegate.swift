//
//  AppDelegate.swift
//  ResearchNotifier
//
//  Created by zhangya on 12/5/17.
//  Copyright © 2017 yage. All rights reserved.
//

import UIKit
import os.log

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        os_log("starting register remote notifications", type: .debug)
        UIApplication.shared.registerForRemoteNotifications()
        
        return true
    }
    
    func application(_ application:UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        os_log("remote register succeed", type: .debug)
        self.enableRemoteNotificationFeatures()
        self.forwardTokenToServer(token: deviceToken)
        os_log("device token is %@", type: .info, deviceToken.base64EncodedString())
    }
    
    func application(_ application: UIApplication,
                     didFailToRegisterForRemoteNotificationsWithError error: Error) {
        // The token is not currently available.
        os_log("Remote notification support is unavailable due to error: %@ ", type: .error, error.localizedDescription)
        self.disableRemoteNotificationFeatures()
    }
    
    func enableRemoteNotificationFeatures() {
        
    }
    
    func disableRemoteNotificationFeatures() {
        
    }
    
    func forwardTokenToServer(token: Data) {
        GlobalData.getInstance().deviceToken = token
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

