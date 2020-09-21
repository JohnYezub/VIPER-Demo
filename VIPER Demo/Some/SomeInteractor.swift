//
//  SomeInteractor.swift
//  VIPER Demo
//
//  Created by   admin on 17.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation
protocol SomeInteractorProtocol: class {
    func empty()
}

class SomeInteractor: SomeInteractorProtocol {
     
     ///gonna weak ref to presenter
    weak var presenter: SomePresenterProtocol!
    
    required init(presenter: SomePresenterProtocol) {
        self.presenter = presenter
        
    }
    
    func empty() {
        print(#function)
    }
 
}
