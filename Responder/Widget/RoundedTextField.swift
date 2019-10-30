//
//  RoundedTextField.swift
//  Responder
//
//  Created by ramil salazar on 30/10/2019.
//  Copyright © 2019 Startechup. All rights reserved.
//

import UIKit

class RoundedTextField: UITextField {

    let padding = UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30)
    
    convenience init(placeHolder: String, keyboard: UIKeyboardType, isSecure: Bool) {
        self.init()
        
        textAlignment = .left
        borderStyle = .none
        textColor = .darkGray
        autocorrectionType = .no
        autocapitalizationType = .none
        font = UIFont(name:"Avenir-Book",size: 16)
        keyboardType = keyboard
        placeholder = placeHolder
        isSecureTextEntry = isSecure
        translatesAutoresizingMaskIntoConstraints = false
        setCornerRadius(25)
    }

    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    func setCornerRadius(_ radius: CGFloat) {
        superview?.layoutIfNeeded()
        layer.cornerRadius = radius
        layer.backgroundColor = UIColor.white.cgColor
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOpacity = 0.4
        layer.shadowOffset = .zero
        layer.shadowRadius = 3
    }
    
}
