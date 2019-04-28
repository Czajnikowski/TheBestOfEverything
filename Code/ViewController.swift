//
//  ViewController.swift
//  Code
//
//  Created by Maciek on 24/04/2019.
//  Copyright © 2019 mczarnik.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let somethingTextField = Builder.buildSomethingTextField()
    
    override func loadView() {
        let printButton = Builder.buildPrintButton(
            target: self,
            selector: #selector(didTapPrint)
        )
        view = Builder.buildView(
            somethingTextField: somethingTextField,
            printButton: printButton
        )
    }
    
    @objc func didTapPrint() {
        print(somethingTextField.text ?? "Nothing")
    }
}
