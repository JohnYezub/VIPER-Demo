//
//  SomeRouter.swift
//  VIPER Demo
//
//  Created by   admin on 17.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation
import UIKit


protocol SomeRouterProtocol: class {
    func showSecond()
}

class SomeRouter: SomeRouterProtocol {
    
    //  weak var presenter: SomePresenterProtocol?
    weak var viewController: SomeViewController!
    
    init(viewController: SomeViewController) {
        self.viewController = viewController
        
    }
    
    
    func showSecond() {
        print("SomeRouter was asked to \(#function)")
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        viewController.present(secondViewController, animated: true, completion: nil)
    }
    
    
}
