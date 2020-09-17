//
//  SomeConfigurator.swift
//  VIPER Demo
//
//  Created by   admin on 17.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation

protocol SomeConfiguratorProtocol: class {
    func configure(with viewController: SomeViewController)
}
class SomeConfigurator: SomeConfiguratorProtocol {
     
    
    
    func configure(with viewController: SomeViewController) {
        
        let presenter = SomePresenter(viewController: viewController)
        let interactor = SomeInteractor(presenter: presenter)
        let router = SomeRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
    
    
}
