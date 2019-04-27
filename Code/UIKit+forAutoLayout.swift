//
//  UIKit+forAutoLayout.swift
//  Code
//
//  Created by Maciek on 24/04/2019.
//  Copyright © 2019 mczarnik.com. All rights reserved.
//

import UIKit

extension UIView {
    func forAutoLayout() -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        
        return self
    }
}
