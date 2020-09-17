//
//  SomePresenter.swift
//  VIPER Demo
//
//  Created by   admin on 17.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation

protocol SomePresenterProtocol: class {
    func openButtonClicked()
}

class SomePresenter: SomePresenterProtocol {
    
    var interactor: SomeInteractorProtocol!
    var router: SomeRouterProtocol!
    weak var viewcontroller: SomeViewController!
    
    init(viewController: SomeViewController) {
        self.viewcontroller = viewController
        
    }
    
    func openButtonClicked() {
        print("openButtonClicked")
        router.showSecond()
    }
    
    
}
