//
//  DevConfig.swift
//  AppConfig
//
//  Created by nayhan on 21.04.2022.
//

import Foundation

enum TestUrl:String {
    case DEV  = "https:\\dev.local.com"
}
class DevConfig {
    static let shared : DevConfig = DevConfig()
    var baseUrl : String?
    func setServiceConfig(){
        #if DEV
        self.baseUrl = TestUrl.DEV.rawValue
        #endif
         
    }
}
