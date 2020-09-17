//
//  SecondRouter.swift
//  VIPER Demo
//
//  Created by   admin on 17.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation

protocol SecondRouterProtocol: class {
        func closeViewController()
}

class SecondRouter: SecondRouterProtocol {
   
    weak var viewController: SecondViewController!
    
    init(viewController: SecondViewController) {
        self.viewController = viewController
        print("Router \(#function)")
        print("Router.viewController - weak -> viewController")
    }
    func closeViewController() {
        self.viewController.dismiss(animated: true, completion: nil)
       }
       
    deinit {
        print("Router \(#function)")
    }
}

