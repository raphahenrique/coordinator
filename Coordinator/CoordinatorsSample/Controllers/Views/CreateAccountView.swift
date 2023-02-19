//
//  CreateAccountView.swift
//  CoordinatorsSample
//
//  Created by Raphael on 18/02/23.
//  Copyright © 2023 TBD-patrichel. All rights reserved.
//

import UIKit

class CreateAccountView: UIView {
    
    private let infoLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Presented!!"
        label.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        backgroundColor = .gray
        
        addSubview(infoLabel)
        
        NSLayoutConstraint.activate([
            infoLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            infoLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            infoLabel.widthAnchor.constraint(equalTo: widthAnchor, constant: -32)
        ])
    }
}
