//
//  SomePresenter.swift
//  VIPER Demo
//
//  Created by   admin on 17.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation

///presenter listens to View
protocol SomePresenterProtocol: class {
    func openButtonClicked()
}

class SomePresenter: SomePresenterProtocol {
    
     ///gonna hold strong ref to interactor
    var interactor: SomeInteractorProtocol!
     ///gonna hold strong ref to router
    var router: SomeRouterProtocol!
     /// weak ref to view
    weak var viewcontroller: SomeViewController!
    
    init(viewController: SomeViewController) {
        self.viewcontroller = viewController
        
    }
    
    ///once the action in View was called, presenter ask router
    func openButtonClicked() {
        print("openButtonClicked")
        router.showSecond()
    }
    
    
}
