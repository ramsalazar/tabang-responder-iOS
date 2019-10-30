//
//  CustomView.swift
//  Responder
//
//  Created by ramil salazar on 30/10/2019.
//  Copyright © 2019 Startechup. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setViews()
        layoutViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setViews()
        layoutViews()
    }
    
    func setViews() {
        backgroundColor = .white
    }
    
    func layoutViews() {}
}
