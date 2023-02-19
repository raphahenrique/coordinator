//
//  HomeViewController.swift
//  CoordinatorsSample
//
//  Created by Raphael Henrique on 12/04/20.
//  Copyright © 2020 TBD-patrichel. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var homeCoordinator: HomeCoordinator?
    
    override func loadView() {
        let oneView = HomeView()
        oneView.delegate = self
        view = oneView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Coordinator Sample"
    }

}

extension HomeViewController: HomeViewDelegate {
    
    func didTapBuyMe() {
        homeCoordinator?.handle(event: SampleEvents.goToBuyVC)
    }
    
    func didTapCreate() {
        homeCoordinator?.handle(event: SampleEvents.createAccount)
    }

}
