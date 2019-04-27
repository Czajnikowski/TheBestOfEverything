//
//  ViewController.swift
//  Code
//
//  Created by Maciek on 24/04/2019.
//  Copyright © 2019 mczarnik.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let somethingTextField = UITextField().forAutoLayout()
    
    override func loadView() {
        super.loadView()
        
        view.backgroundColor = .white
    
        let somethingLabel = UILabel().forAutoLayout()
        somethingLabel.text = "Put something here that you want to print to the Xcode Console:"
        somethingLabel.numberOfLines = 0
        
        somethingTextField.placeholder = "Something..."
        
        let printButton = UIButton(type: .system).forAutoLayout()
        printButton.setTitle("Print", for: .normal)
        printButton.addTarget(self, action: #selector(didTapPrint), for: .touchUpInside)
        
        let stackView = UIStackView(arrangedSubviews: [somethingLabel, somethingTextField, printButton]).forAutoLayout()
        stackView.axis = .vertical
        stackView.spacing = 8.0
        
        view.addSubview(stackView)
        
        stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20.0).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20.0).isActive = true
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
    }
    
    @objc func didTapPrint() {
        print(somethingTextField.text ?? "Nothing")
    }
}
