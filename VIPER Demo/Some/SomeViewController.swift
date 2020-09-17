//
//  SomeViewController.swift
//  VIPER Demo
//
//  Created by   admin on 17.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import UIKit

class SomeViewController: UIViewController {
            
    var presenter: SomePresenter!
    let configurator = SomeConfigurator()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        configurator.configure(with: self)
    }
    
    private func setup() {
        let openSecond = UIButton()
        openSecond.setTitle("openSecond", for: .normal)
        openSecond.backgroundColor = .purple
        
        view.addSubview(openSecond)
        openSecond.translatesAutoresizingMaskIntoConstraints = false
        openSecond.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0).isActive = true
        openSecond.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        openSecond.addTarget(self, action: #selector(openSecondClicked), for: .touchUpInside)
    }
   
    @objc func openSecondClicked() {
        presenter.openButtonClicked()
    }
    
}
