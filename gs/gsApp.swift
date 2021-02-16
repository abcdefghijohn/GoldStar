//
//  gsApp.swift
//  gs
//
//  Created by John Kim on 2/6/21.
//

import SwiftUI
import Firebase

@main
struct gsApp: App {
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
    
}
