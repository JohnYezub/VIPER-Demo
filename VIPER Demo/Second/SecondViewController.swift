//
//  SecondViewController.swift
//  VIPER Demo
//
//  Created by   admin on 17.09.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
        
    var presenter: SecondPresenter! {
        didSet {
            print("ViewController -> presenter")
        }
    }
    var configurator = SecondConfigurator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        configurator.configure(viewController: self)
    }
    
    private func setup() {
        
        let closeButton = UIButton()
        closeButton.setTitle("close", for: .normal)
        closeButton.setTitleColor(.black, for: .normal)
        
        view.addSubview(closeButton)
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        closeButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        closeButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20).isActive = true
        
        closeButton.addTarget(self, action: #selector(closeClick), for: .touchUpInside)
        
        let labelText = UILabel()
        labelText.text = "Hi, there! I'm a Second View"
        labelText.textAlignment = .center
        
        view.addSubview(labelText)
        labelText.translatesAutoresizingMaskIntoConstraints = false
        labelText.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        labelText.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        labelText.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    @objc func closeClick() {        
        presenter.closeClicked()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("SecondViewController \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("SecondViewController \(#function)")
    }
    
}
