//
//  BuyViewController.swift
//  CoordinatorsSample
//
//  Created by Raphael Henrique on 12/04/20.
//  Copyright © 2020 TBD-patrichel. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController {

    override func loadView() {
        let buyView = UIView(frame: .zero)
        buyView.backgroundColor = .yellow
        view = buyView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Pushed!!"
    }

}
