//
//  SecondInteractor.swift
//  VIPER Demo
//
//  Created by   admin on 17.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation
protocol SecondInteractorProtocol: class {
    //var urlRatesSource: String { get }
    func getData()
}

class SecondInteractor: SecondInteractorProtocol {
   
    weak var presenter: SecondPresenterProtocol!
    //let serverService: ServerServiceProtocol = ServerService()
    
    init(presenter: SecondPresenterProtocol) {
        self.presenter = presenter
        print("Interactor \(#function)")
        print("Interactor.presenter - weak -> presenter")
    }
    
    func getData() {
        print("Interactor was asked to \(#function)")
       }
    deinit {
        print("Interactor \(#function)")
    }
}
