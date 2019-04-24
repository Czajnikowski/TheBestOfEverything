//
//  ViewController.swift
//  TheBestOfEverything
//
//  Created by Maciek on 24/04/2019.
//  Copyright © 2019 mczarnik.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var somethingTextField: UITextField!
    
    @IBAction func didTapPrint() {
        print(somethingTextField.text ?? "Nothing")
    }
}

