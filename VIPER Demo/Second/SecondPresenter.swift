//
//  SecondPresenter.swift
//  VIPER Demo
//
//  Created by   admin on 17.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation
protocol SecondPresenterProtocol: class {
    func closeClicked()
}

class SecondPresenter: SecondPresenterProtocol {
    
    var interactor: SecondInteractorProtocol! {
         didSet {
            print("Presenter.interactor -> interactor")
         }
     }
    var router: SecondRouterProtocol!{
        didSet {
            print("Presenter.router -> router")
        }
    }
    
    weak var viewController: SecondViewController!
    
    init(viewcontroller: SecondViewController) {
        self.viewController = viewcontroller
        print("Presenter \(#function)")
        print("Presenter.viewcontroller - weak -> viewcontroller")
    }
    
    
    func closeClicked() {
        print("Presenter \(#function)")
        router.closeViewController()
    }
    
    deinit {
        print("Presenter \(#function)")
    }
    
}
