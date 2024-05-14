//
//  App574App.swift
//  App574
//
//  Created by Вячеслав on 5/14/24.
//

import SwiftUI
import OneSignalFramework

class AppDelegate: NSObject, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        OneSignal.initialize(DataManager().oneSignalID, withLaunchOptions: launchOptions)
        
        return true
    }
}

@main
struct App574App: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        
        WindowGroup {
            
            NavigationView {
                
                ContentView()
            }
        }
    }
}
