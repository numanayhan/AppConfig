//
//  Dashboard.swift
//  AppConfig
//
//  Created by nayhan on 21.04.2022.
//

import UIKit

class Dashboard: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 
        getAppName()
        
    }
}
extension Dashboard {
    func getAppName(){
        let appName  = Bundle.main.object(forInfoDictionaryKey: "")
    }
}
