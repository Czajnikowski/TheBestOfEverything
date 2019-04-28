//
//  ViewController+Builder.swift
//  Code
//
//  Created by Maciek on 28/04/2019.
//  Copyright © 2019 mczarnik.com. All rights reserved.
//

import UIKit

extension ViewController {
    final class Builder {
        static func buildView(somethingTextField: UITextField, printButton: UIButton) -> UIView {
            let view = UIView().forAutoLayout()
            view.backgroundColor = .white
            
            let stackView = buildRootStackView(somethingTextField: somethingTextField, printButton: printButton)
            view.addSubview(stackView)
            
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20.0).isActive = true
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20.0).isActive = true
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
            
            return view
        }
        
        private static func buildRootStackView(somethingTextField: UITextField, printButton: UIButton) -> UIStackView {
            let stackView = UIStackView(arrangedSubviews: [buildSomethingLabel(), somethingTextField, printButton]).forAutoLayout()
            stackView.axis = .vertical
            stackView.spacing = 8.0
            
            return stackView
        }
        
        private static func buildSomethingLabel() -> UILabel {
            let label = UILabel().forAutoLayout()
            label.text = "Put something here that you want to print to the Xcode Console:"
            label.numberOfLines = 0
            
            return label
        }
        
        static func buildSomethingTextField() -> UITextField {
            let textField = UITextField().forAutoLayout()
            textField.placeholder = "Something..."
            
            return textField
        }
        
        static func buildPrintButton(target: Any, selector: Selector) -> UIButton {
            let button = UIButton(type: .system).forAutoLayout()
            button.setTitle("Print", for: .normal)
            
            
            return button
        }
    }
}
