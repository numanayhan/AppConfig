//
//  AppDelegate.swift
//  AppConfig
//
//  Created by nayhan on 21.04.2022.
//

import UIKit
var rooter:Navigation?
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        // Hem simulator hemde gerçek cihazda testiniz ayrı yapabilirsiniz.
        #if targetEnvironment(simulator)
        DevConfig.shared.setServiceConfig()
        
        #else
        ProdConfig.shared.setServiceConfig()
        #endif
        
        
        Thread.sleep(forTimeInterval: 0.0)
         
        //Navigation ile Navigation kontroller rooter olarak alır.

        setNavigation()
        
        return true
    }
    func setNavigation(){
          
        //Window UI
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        //Root App
        rooter = Navigation(window: window!)
        rooter?.startApp()
        
    }
}
