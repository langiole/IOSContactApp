//
//  CustomTextField.swift
//  ContactApp
//
//  Created by Lee Angioletti on 8/29/16.
//  Copyright © 2016 Lee Angioletti. All rights reserved.
//

import UIKit

@IBDesignable

class CustomTextField: UITextField {
    
    // 1. Set up your enum
    enum Layout: String {
        case Custom = "custom" // lowercase to make it easily case-insensitive
        case Login = "login"
    }
    
    
    // 2. Then set up a stored property, which will be for use in code
    var layout = Layout.Custom // default layout
    
    
    // 3. And another stored property which will only be accessible in IB (because the "unavailable" attribute prevents its use in code)
    @available(*, unavailable, message="This property is reserved for Interface Builder. Use 'shape' instead.")
    @IBInspectable var layoutName: String? {
        willSet {
            if let newLayout = Layout(rawValue: newValue?.lowercaseString ?? "") {
                layout = newLayout
                print("here", layout)
            }
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0.0
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        switch layout {
            case .Custom:
                print("custom")
            case .Login:
                setLoginLayout()
                print("login")
        }

    }
    
    func setLoginLayout() {
        self.backgroundColor = UIColor.whiteColor()
        self.layer.cornerRadius = 3
        self.layer.masksToBounds = true
    }
    
    func setCustomLayout() {
        
    }

}
