//
//  ProdConfig.swift
//  AppConfig
//
//  Created by nayhan on 21.04.2022.
//

import Foundation

enum BaseUrl:String {
    case PROD = "https:\\prod.local.com"
}
class ProdConfig {
    static let shared : ProdConfig = ProdConfig()
    var baseUrl : String?
    func setServiceConfig(){
        #if PROD
        self.baseUrl = BaseUrl.PROD.rawValue
        #endif
    }
}
