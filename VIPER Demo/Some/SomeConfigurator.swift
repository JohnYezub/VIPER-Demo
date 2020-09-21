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
        
        ///init creates weak refs
        let presenter = SomePresenter(viewController: viewController)
        let interactor = SomeInteractor(presenter: presenter)
        let router = SomeRouter(viewController: viewController)
        
         ///gonna hold strong ref to presenter
        viewController.presenter = presenter
         ///gonna hold strong ref to interactor
        presenter.interactor = interactor
         ///gonna hold strong ref to router
        presenter.router = router
    }
    
    
}
