//
//  ViewController.swift
//  CoordinatorsSample
//
//  Created by Raphael Henrique on 12/04/20.
//  Copyright © 2020 TBD-patrichel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    init() {
//        super.init(nibName: nil, bundle: nil)
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    override func loadView() {
        view = CustomView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "VC 1"
        // Do any additional setup after loading the view.
        
        print("hi")
        print("hi2")
    }
    
}


class CustomView: UIView {
    
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
        
        // Add any additional subviews or configuration here
    }
}
