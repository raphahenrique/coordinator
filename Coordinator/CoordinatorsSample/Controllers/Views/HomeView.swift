//
//  HomeView.swift
//  CoordinatorsSample
//
//  Created by Raphael on 18/02/23.
//  Copyright © 2023 TBD-patrichel. All rights reserved.
//

import UIKit

protocol HomeViewDelegate: AnyObject {
    func didTapBuyMe()
    func didTapCreate()
}

class HomeView: UIView {
    
    // MARK: - Properties
    
    weak var delegate: HomeViewDelegate?
    
    private lazy var buyButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Buy Me", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.addTarget(self, action: #selector(buyTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var createAccountButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Create", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.addTarget(self, action: #selector(createTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    // MARK: - Setup
    
    private func setupView() {
        backgroundColor = .white

        setConstraints()
    }
    
    private func setConstraints() {
        
        addSubview(buyButton)
        addSubview(createAccountButton)
        
        NSLayoutConstraint.activate([
            
            buyButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            buyButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            
            createAccountButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            createAccountButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            
            buyButton.widthAnchor.constraint(equalTo: createAccountButton.widthAnchor),
            
            buyButton.heightAnchor.constraint(equalToConstant: 40),
            createAccountButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
    }
    
    @objc private func buyTapped() {
        delegate?.didTapBuyMe()
    }

    @objc private func createTapped() {
        delegate?.didTapCreate()
    }
}
