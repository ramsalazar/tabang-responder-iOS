//
//  MainNavigationController.swift
//  Responder
//
//  Created by ramil salazar on 30/10/2019.
//  Copyright © 2019 Startechup. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.isTranslucent = false
        navigationBar.isHidden = true
        
        switch isLoggedIn() {
        case true:
            // Go to Home screen
            viewControllers = [HomeVC()]
        default:
            // Go to Login screen
            perform(#selector(showLoginVC), with: nil, afterDelay: 0.01)
        }
    }
}

private extension MainNavigationController {
    func isLoggedIn() -> Bool {
        return false
    }
    
    @objc private func showLoginVC() {
        let navController = UINavigationController(rootViewController: LoginVC())
        navController.navigationBar.isHidden = true
        navController.modalPresentationStyle = .fullScreen
        present(navController, animated: false, completion: nil)
    }
}
