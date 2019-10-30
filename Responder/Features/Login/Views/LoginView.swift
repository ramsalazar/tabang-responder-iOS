//
//  LoginView.swift
//  Responder
//
//  Created by ramil salazar on 30/10/2019.
//  Copyright © 2019 Startechup. All rights reserved.
//

import UIKit

class LoginView: CustomView {
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isScrollEnabled = true
        scrollView.contentInsetAdjustmentBehavior = .never
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()
    
    private lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var topView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()
    
    private lazy var bottomView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var logoImage: UIImageView = {
           let imageView = UIImageView()
           imageView.translatesAutoresizingMaskIntoConstraints = false
           imageView.contentMode = .scaleAspectFit
           return imageView
       }()
    
    private lazy var loginStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 15
        return stackView
    }()
    
    private lazy var userTextField: RoundedTextField = {
        return RoundedTextField(placeHolder: "Username", keyboard: .emailAddress, isSecure: false)
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Log In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 25
        button.titleLabel?.font = UIFont(name:"Avenir-Heavy",size: 20)
        button.addTarget(self, action: #selector(loginTap), for: .touchUpInside)
        return button
    }()
    
    override func setViews() {
        super.setViews()
                
        addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(topView)
        contentView.addSubview(bottomView)
        bottomView.addSubview(loginStackView)
        loginStackView.addArrangedSubview(userTextField)
        loginStackView.addArrangedSubview(loginButton)
    }
    
    override func layoutViews() {
        
        scrollView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor,
                          paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        contentView.anchor(top: scrollView.topAnchor, leading: scrollView.leadingAnchor, bottom: scrollView.bottomAnchor, trailing: scrollView.trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        contentView.anchorWithMultiplier(width: scrollView.widthAnchor, height: nil, multiplier: 1.0)
        
        topView.anchor(top: contentView.topAnchor, leading: contentView.leadingAnchor, bottom: bottomView.topAnchor, trailing: contentView.trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        topView.anchorWithMultiplier(width: nil, height: heightAnchor, multiplier: 0.60)
        
        bottomView.anchor(top: topView.bottomAnchor, leading: contentView.leadingAnchor, bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        bottomView.anchorWithMultiplier(width: nil, height: heightAnchor, multiplier: 0.40)
        
        loginStackView.anchor(top: nil, leading: bottomView.leadingAnchor, bottom: nil, trailing: bottomView.trailingAnchor, paddingTop: 0, paddingLeft: 50, paddingBottom: 0, paddingRight: 50, width: 0, height: 0)
        
        NSLayoutConstraint.activate([
            loginStackView.centerYAnchor.constraint(equalTo: bottomView.centerYAnchor),
            userTextField.heightAnchor.constraint(equalToConstant: 50),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
}

private extension LoginView {
    @objc func loginTap() {
        print("tap login")
    }
}
