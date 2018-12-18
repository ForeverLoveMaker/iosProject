//
//  ViewController.swift
//  dengshiliao
//
//  Created by student on 2018/10/24.
//  Copyright © 2018年 finally. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let firstView = UIView()
        firstView.backgroundColor = #colorLiteral(red: 0.5783684826, green: 1, blue: 0.6361098968, alpha: 1)
        let secondView = UIView()
        secondView.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        let thirdView = UIView()
        thirdView.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        
        let stackView = UIStackView(arrangedSubviews: [firstView,secondView,thirdView])
        
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 20).isActive = true
    }
}


