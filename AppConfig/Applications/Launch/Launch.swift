//
//  Launch.swift
//  AppConfig
//
//  Created by nayhan on 21.04.2022.
//

import UIKit
import TinyConstraints

class Launch: UIViewController {
    lazy var logo : UILabel = {
        let label = UILabel()
         
        label.font = UIFont(name: "Futura-Medium", size: 40)
        label.textAlignment = NSTextAlignment.center
        label.textColor = UIColor.white
        return label
    }()
    
    weak var timer: Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLayout()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        if navigationController != nil{
            navigationController?.setNavigationBarHidden(true, animated: true)
              
            //startTimer()
             
        }
    }
    func setLayout(){
        let appName = Bundle.main.object(forInfoDictionaryKey: "PRODUCT_NAME") as? String
        print("PRODUCT_NAME", appName!)
        logo.text = appName
        view.backgroundColor = .black
        view.addSubview(logo)
        logo.centerInSuperview()
        logo.width(view.frame.width)
        logo.height(100)
        
    }
    func startTimer() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1.66, repeats: false) {  _ in
            self.setRoot()
        }
    }
    func stopTimer() {
        timer?.invalidate()
    }
    deinit {
        stopTimer()
    }
    func setRoot(){
        self.navigationController?.pushViewController(Dashboard(), animated: true)
    }
   
    
}
