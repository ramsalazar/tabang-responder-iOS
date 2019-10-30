//
//  HomeVC.swift
//  Responder
//
//  Created by ramil salazar on 30/10/2019.
//  Copyright © 2019 Startechup. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    private let customView = HomeView()
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("HomeVC init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
