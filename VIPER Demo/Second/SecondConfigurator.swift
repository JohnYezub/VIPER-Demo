//
//  SecondConfigurator.swift
//  VIPER Demo
//
//  Created by   admin on 17.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation
protocol SecondConfiguratorProtocol: class {
    func configure(viewController: SecondViewController)
}

class SecondConfigurator: SecondConfiguratorProtocol {
    
    init() {
        print("Configurator init")
    }
    
    func configure(viewController: SecondViewController) {
        let presenter = SecondPresenter(viewcontroller: viewController)
        let interactor = SecondInteractor(presenter: presenter)
        let router = SecondRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.router = router
        presenter.interactor = interactor
    }
    deinit {
       print("Configurator de-init")
    }
    
}
